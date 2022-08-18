package app.revanced.android.gms.dynamite;

import app.revanced.android.gms.dynamic.IObjectWrapper;

interface IDynamiteLoader {
    int getModuleVersion(IObjectWrapper wrappedContext, String moduleId) = 0;
    int getModuleVersion2(IObjectWrapper wrappedContext, String moduleId, boolean updateConfigIfRequired) = 2;
    int getModuleVersion2NoCrashUtils(IObjectWrapper wrappedContext, String moduleId, boolean updateConfigIfRequired) = 4;

    IObjectWrapper createModuleContext(IObjectWrapper wrappedContext, String moduleId, int minVersion) = 1;
    IObjectWrapper createModuleContextNoCrashUtils(IObjectWrapper wrappedContext, String moduleId, int minVersion) = 3;

    int getIDynamiteLoaderVersion() = 5;
}
