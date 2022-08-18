package app.revanced.android.gms.checkin.internal;

interface ICheckinService {
    String getDeviceDataVersionInfo();
    long getLastCheckinSuccessTime();
    String getLastSimOperator();
}
