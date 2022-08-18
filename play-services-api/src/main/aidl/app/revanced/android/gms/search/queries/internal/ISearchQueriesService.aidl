package app.revanced.android.gms.search.queries.internal;

import app.revanced.android.gms.search.queries.QueryRequest;
import app.revanced.android.gms.search.queries.internal.ISearchQueriesCallbacks;

interface ISearchQueriesService {
    void query(in QueryRequest request, ISearchQueriesCallbacks callbacks) = 1;
}
