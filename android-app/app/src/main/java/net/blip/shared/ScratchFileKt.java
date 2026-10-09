package net.blip.shared;

import defpackage.a7;
import defpackage.jb;
import io.ktor.http.Url;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.text.Charsets;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ScratchFileKt {
    public static final Object a(ScratchFileWriter scratchFileWriter, InternetShortcut internetShortcut, ContinuationImpl continuationImpl) {
        String str;
        String str2;
        String str3 = internetShortcut.b;
        Url url = internetShortcut.a;
        if (str3 == null) {
            str = jb.f("Link from ", url.j);
        } else {
            str = str3;
        }
        String str4 = "URL=" + url;
        if (str3 != null) {
            str2 = "Title=".concat(str3);
        } else {
            str2 = null;
        }
        byte[] bytes = CollectionsKt.y(ArraysKt.p(new String[]{"[InternetShortcut]", str4, str2}), "\r\n", null, null, new a7(22), 30).getBytes(Charsets.a);
        bytes.getClass();
        return scratchFileWriter.a(bytes, str, "url", continuationImpl);
    }
}
