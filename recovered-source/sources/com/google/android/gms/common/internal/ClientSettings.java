package com.google.android.gms.common.internal;

import androidx.collection.ArraySet;
import com.google.android.gms.signin.SignInOptions;
import io.sentry.d;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ClientSettings {
    public final Set a;
    public final Set b;
    public final String c;
    public final String d;
    public final SignInOptions e;
    public Integer f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public ArraySet a;
        public String b;
        public String c;
    }

    public ClientSettings(Set set, String str, String str2) {
        Set unmodifiableSet;
        if (set == null) {
            unmodifiableSet = Collections.EMPTY_SET;
        } else {
            unmodifiableSet = Collections.unmodifiableSet(set);
        }
        this.a = unmodifiableSet;
        Map map = Collections.EMPTY_MAP;
        this.c = str;
        this.d = str2;
        this.e = SignInOptions.b;
        HashSet hashSet = new HashSet(unmodifiableSet);
        Iterator it = map.values().iterator();
        if (!it.hasNext()) {
            this.b = Collections.unmodifiableSet(hashSet);
        } else {
            it.next().getClass();
            d.i();
            throw null;
        }
    }
}
