package app.revanced.android.gms.location.reporting.internal;

import android.accounts.Account;
import app.revanced.android.gms.location.places.PlaceReport;
import app.revanced.android.gms.location.reporting.ReportingState;
import app.revanced.android.gms.location.reporting.UploadRequest;
import app.revanced.android.gms.location.reporting.UploadRequestResult;

interface IReportingService {
    ReportingState getReportingState(in Account account) = 0;
    int tryOptIn(in Account account) = 1;
    UploadRequestResult requestUpload(in UploadRequest request) = 2;
    int cancelUploadRequest(long l) = 3;
    int reportDeviceAtPlace(in Account account, in PlaceReport report) = 4;
}
