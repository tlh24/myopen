#ifndef _PO8E_H_
#define _PO8E_H_

#ifdef WIN32
    #ifdef PO8E_EXPORTS
        #define PO8E_API __declspec(dllexport)
    #else
        #define PO8E_API __declspec(dllimport)
    #endif
#else
    #include <unistd.h>
    #ifdef PO8E_EXPORTS
        #define PO8E_API __attribute__((visibility("default")))
    #else
        #define PO8E_API
    #endif
#endif

enum
{
    HIGH_PRIORITY,
#ifndef INFINITE
    INFINITE = 0xFFFFFFFF, /* taken from windows headers */
#endif

    /* Possible errors */
    PO8E_SUCCESS = 0,
    PO8E_FAILURE,
    PO8E_NOT_IMPLEMENTED,
    PO8E_INVALID_INDEX,
    PO8E_TIMEOUT,
    PO8E_CHAN_COUNT_CHANGED,
    PO8E_DATA_TYPE_CHANGED
};

#ifdef __cplusplus
class PO8E_API PO8e
{
public:
    /* cardCount returns the number of PO8e cards detected in the
       system.  Call this first to determine the possible values for
       the "index" passed to the constructor */
    static int cardCount();

    /* Specify the target card by index.  The index will be consistent
       across system boots and is dependent on the PCIe bus layout, so
       if you move the cards between slots their respective indices
       can change.
     */
    static PO8e* connectToCard(unsigned int cardIndex = 0);

    /* Free the PO8e card objects through this interface.  Done this
       way to ensure that in Windows the objects are freed from the
       correct heap context.
     */
    static void releaseCard(PO8e *card);

    /* Call these to start and stop collecting a data stream from the
       PO8e card.  Collected data will be buffered as needed. */
    bool startCollecting(bool detectStops = true);
    void stopCollecting();

    /* Releases numSamples of samples from each buffered channel.
       Passing -1 releases all buffered samples.  The freeBuffers
       argument controls the optional freeing of the underlying data
       buffers. */
    void flushBufferedData(int numSamples = -1, bool freeBuffers = false);

    /* Though most errors can be collected from the return values of
       API functions this should also return the most recent error. */
    int getLastError();

    /* This function provides a means to efficiently wait for data to
       arrive from the RZ unit, although polling may be more efficient
       for high-speed data. */
    size_t waitForDataReady(int timeout = INFINITE);

    /* Returns the number of samples (per channel) that are currently
       buffered.  The value pointed to by the passed bool
       pointer will be set to true if the underlying mechanisms detect
       that data has stopped flowing. */
    size_t samplesReady(bool *stopped = 0);
// TODO: they must call something to clear the stop condition!

    /* Counts the number of channels in the current stream.  Changing
       the number of channels mid-stream triggers an error condition
       and will cause this function to return < 0 where the inverse is
       the error number. */
    int numChannels();

    /* Counts the number of blocks that the current stream is divided
       into.  Each block will contain the same number of channels, so
       dividing the value from numChannels() by this value will leave
       no remainder. */
    int numBlocks();

    /* Returns the size in bytes of each data sample.  Changing the
       data type during a stream triggers an error condition. */
    int dataSampleSize();

    /* Copy the data buffered for an individual channel.  Note that
       this call does NOT advance the data pointer.  Use calls to
       flushBufferedData to discard the data copied using this
       function.  The user is responsible for ensuring that the buffer
       is large enough to hold nSamples * dataSampleSize() bytes. */
    int readChannel(int chanIndex, void *buffer, int nSamples);

    /* Read a block of data and releases the data buffers it occupied
       for later use.  The data will be grouped by channel and the
       number of samples returned applies to all channels.  The user
       is responsible for ensuring that buffer is large enough to hold
       nSamples * numChannels() * dataSampleSize() bytes. */
    int readBlock(void *buffer, int nSamples);

private:
    /* constructor: do NOT instantiate these directly, use connectToCard()/releaseCard() */
    PO8e(class PO8e_internal *card);

    /* holds the object that actually implements the functionality */
    class PO8e_internal *api;
};
#endif

#ifdef __cplusplus
extern "C" 
{
#else
    typedef int size_t;
    typedef int bool;
    enum
    {
        false = 0
        true = 1
    };
#endif
    /* function to get the SVN revision information */
    PO8E_API const char* revisionString();

    /* C version of the API is primarily maintained for ease of import into matlab */
    typedef void* PO8eCard;


    /* for documentation pertaining to these functions see their C++ counter-parts above */
    PO8E_API int cardCount();
    PO8E_API PO8eCard connectToCard(unsigned int cardIndex);
    PO8E_API void releaseCard(PO8eCard card);
    PO8E_API bool startCollecting(PO8eCard card, bool detectStops);
    PO8E_API void stopCollecting(PO8eCard card);
    PO8E_API void flushBufferedData(PO8eCard card, int numSamples, bool freeBuffers);
    PO8E_API int getLastError(PO8eCard card);
    PO8E_API size_t waitForDataReady(PO8eCard card, int timeout);
    PO8E_API size_t samplesReady(PO8eCard card, bool *stopped);
    PO8E_API int numChannels(PO8eCard card);
    PO8E_API int numBlocks(PO8eCard card);
    PO8E_API int dataSampleSize(PO8eCard card);
    PO8E_API int readChannel(PO8eCard card, int chanIndex, void *buffer, int nSamples);
    PO8E_API int readBlock(PO8eCard card, void *buffer, int nSamples);

#ifdef __cplusplus
}
#endif
#endif
