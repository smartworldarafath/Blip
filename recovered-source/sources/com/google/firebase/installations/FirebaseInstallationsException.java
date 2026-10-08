package com.google.firebase.installations;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class FirebaseInstallationsException extends FirebaseException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseInstallationsException(String str) {
        super(str);
        Preconditions.d(str, "Detail message must not be empty");
    }
}
