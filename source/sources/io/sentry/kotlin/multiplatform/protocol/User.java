package io.sentry.kotlin.multiplatform.protocol;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class User {
    public String a;
    public String b = null;
    public String c = null;
    public String d = null;
    public LinkedHashMap e = null;
    public LinkedHashMap f = null;

    public User(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof User) {
                User user = (User) obj;
                if (!Intrinsics.a(this.a, user.a) || !Intrinsics.a(this.b, user.b) || !Intrinsics.a(this.c, user.c) || !Intrinsics.a(this.d, user.d) || !Intrinsics.a(this.e, user.e) || !Intrinsics.a(this.f, user.f)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        String str = this.a;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = hashCode * 31;
        String str2 = this.b;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        String str3 = this.c;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        String str4 = this.d;
        if (str4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str4.hashCode();
        }
        int i5 = (i4 + hashCode4) * 31;
        LinkedHashMap linkedHashMap = this.e;
        if (linkedHashMap == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = linkedHashMap.hashCode();
        }
        int i6 = (i5 + hashCode5) * 31;
        LinkedHashMap linkedHashMap2 = this.f;
        if (linkedHashMap2 != null) {
            i = linkedHashMap2.hashCode();
        }
        return i6 + i;
    }

    public final String toString() {
        return "User(email=" + this.a + ", id=" + this.b + ", username=" + this.c + ", ipAddress=" + this.d + ", other=" + this.e + ", unknown=" + this.f + ')';
    }
}
