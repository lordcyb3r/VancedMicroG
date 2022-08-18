package com.google.android.auth;

import android.os.Bundle;
import android.accounts.Account;

import app.revanced.android.gms.auth.AccountChangeEventsResponse;
import app.revanced.android.gms.auth.AccountChangeEventsRequest;

interface IAuthManagerService {
    Bundle getToken(String accountName, String scope, in Bundle extras) = 0;
    Bundle clearToken(String token, in Bundle extras) = 1;
    AccountChangeEventsResponse getChangeEvents(in AccountChangeEventsRequest request) = 2;
    Bundle getTokenWithAccount(in Account account, String scope, in Bundle extras) = 4;
    Bundle getAccounts(in Bundle extras) = 5;
    Bundle removeAccount(in Account account) = 6;
    Bundle requestGoogleAccountsAccess(String packageName) = 7;
}
