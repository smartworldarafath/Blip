package io.sentry.kotlin.multiplatform.protocol;

import io.sentry.kotlin.multiplatform.SentryLevel;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Breadcrumb {
    public SentryLevel a;
    public String b;
    public String c;
    public String d;
    public LinkedHashMap e;

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Breadcrumb) {
                Breadcrumb breadcrumb = (Breadcrumb) obj;
                if (this.a != breadcrumb.a || !Intrinsics.a(this.b, breadcrumb.b) || !Intrinsics.a(this.c, breadcrumb.c) || !Intrinsics.a(this.d, breadcrumb.d) || !Intrinsics.a(this.e, breadcrumb.e)) {
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
        SentryLevel sentryLevel = this.a;
        int i = 0;
        if (sentryLevel == null) {
            hashCode = 0;
        } else {
            hashCode = sentryLevel.hashCode();
        }
        int i2 = hashCode * 31;
        String str = this.b;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        String str2 = this.c;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        String str3 = this.d;
        if (str3 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str3.hashCode();
        }
        int i5 = (i4 + hashCode4) * 31;
        LinkedHashMap linkedHashMap = this.e;
        if (linkedHashMap != null) {
            i = linkedHashMap.hashCode();
        }
        return i5 + i;
    }

    public final String toString() {
        return "Breadcrumb(level=" + this.a + ", type=" + this.b + ", message=" + this.c + ", category=" + this.d + ", data=" + this.e + ')';
    }
}
