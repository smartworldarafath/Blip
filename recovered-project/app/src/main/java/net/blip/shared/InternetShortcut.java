package net.blip.shared;

import defpackage.u2;
import io.ktor.http.URLUtilsKt;
import io.ktor.http.Url;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InternetShortcut {
    public final Url a;
    public final String b;
    public final String c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static InternetShortcut a(String str) {
            Object obj;
            String str2;
            Iterator it = new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(str).iterator();
            if (it.hasNext()) {
                if (Intrinsics.a(it.next(), "[InternetShortcut]")) {
                    Url url = null;
                    String str3 = null;
                    while (it.hasNext()) {
                        List G = kotlin.text.StringsKt.G((String) it.next(), new String[]{"="}, 2);
                        String obj2 = kotlin.text.StringsKt.U((String) CollectionsKt.s(G)).toString();
                        if (1 < G.size()) {
                            obj = G.get(1);
                        } else {
                            obj = null;
                        }
                        String str4 = (String) obj;
                        if (str4 == null || (str2 = kotlin.text.StringsKt.U(str4).toString()) == null) {
                            str2 = "";
                        }
                        String upperCase = obj2.toUpperCase(Locale.ROOT);
                        upperCase.getClass();
                        if (upperCase.equals("URL")) {
                            url = URLUtilsKt.a(str2);
                        } else if (upperCase.equals("TITLE")) {
                            str3 = str2;
                        }
                    }
                    if (url != null) {
                        return new InternetShortcut(url, str3);
                    }
                    u2.g("input: missing key: URL");
                    return null;
                }
                u2.g("input: first line must be [InternetShortcut]");
                return null;
            }
            u2.g("input: insufficient lines");
            return null;
        }
    }

    public InternetShortcut(Url url, String str) {
        this.a = url;
        this.b = str;
        this.c = url.n;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof InternetShortcut) {
                InternetShortcut internetShortcut = (InternetShortcut) obj;
                if (!this.a.equals(internetShortcut.a) || !Intrinsics.a(this.b, internetShortcut.b)) {
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
        int hashCode2 = this.a.n.hashCode() * 31;
        String str = this.b;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final String toString() {
        return "InternetShortcut(url=" + this.a + ", title=" + this.b + ")";
    }
}
