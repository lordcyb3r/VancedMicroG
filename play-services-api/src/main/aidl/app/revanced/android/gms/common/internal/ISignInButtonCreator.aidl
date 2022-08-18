package app.revanced.android.gms.common.internal;

import app.revanced.android.gms.dynamic.IObjectWrapper;

interface ISignInButtonCreator {
    IObjectWrapper createSignInButton(IObjectWrapper context, int size, int color); // returns View
}
