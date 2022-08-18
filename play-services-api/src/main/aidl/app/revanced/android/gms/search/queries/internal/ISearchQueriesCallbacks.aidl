package app.revanced.android.gms.search.queries.internal;

import app.revanced.android.gms.search.queries.QueryResponse;

interface ISearchQueriesCallbacks {
    void onQuery(in QueryResponse response) = 1;
}
