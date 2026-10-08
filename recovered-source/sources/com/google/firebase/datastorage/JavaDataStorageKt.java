package com.google.firebase.datastorage;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import java.io.Serializable;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class JavaDataStorageKt {
    public static final Object a(MutablePreferences mutablePreferences, Preferences.Key key, Serializable serializable) {
        mutablePreferences.getClass();
        key.getClass();
        Object obj = mutablePreferences.a.get(key);
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            obj = Arrays.copyOf(bArr, bArr.length);
        }
        if (obj == null) {
            return serializable;
        }
        return obj;
    }
}
