package app.revanced.android.gms.search.corpora.internal;

import app.revanced.android.gms.search.corpora.RequestIndexingResponse;
import app.revanced.android.gms.search.corpora.GetCorpusStatusResponse;

interface ISearchCorporaCallbacks {
    void onRequestIndexing(in RequestIndexingResponse response) = 1;
    void onGetCorpusStatus(in GetCorpusStatusResponse response) = 3;
}
