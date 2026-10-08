package com.google.firebase.installations.local;

import androidx.datastore.preferences.core.Preferences;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.datastorage.JavaDataStorage;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class IidStore {
    public static final Preferences.Key c = new Preferences.Key("|S||P|");
    public static final Preferences.Key d = new Preferences.Key("|S|id");
    public static final String[] e = {"*", "FCM", "GCM", ""};
    public final JavaDataStorage a;
    public final String b;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0045, code lost:
    
        if (r1.isEmpty() != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public IidStore(FirebaseApp firebaseApp) {
        firebaseApp.a();
        this.a = new JavaDataStorage(firebaseApp.a, "com.google.android.gms.appid");
        firebaseApp.a();
        FirebaseOptions firebaseOptions = firebaseApp.c;
        String str = firebaseOptions.e;
        if (str == null) {
            firebaseApp.a();
            str = firebaseOptions.b;
            if (str.startsWith("1:") || str.startsWith("2:")) {
                String[] split = str.split(":");
                if (split.length == 4) {
                    str = split[1];
                }
                str = null;
            }
        }
        this.b = str;
    }
}
