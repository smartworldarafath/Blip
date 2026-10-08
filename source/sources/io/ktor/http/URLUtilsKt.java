package io.ktor.http;

import io.ktor.http.Parameters;
import io.ktor.util.StringValuesBuilderImpl;
import io.ktor.util.StringValuesImpl;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class URLUtilsKt {
    /* JADX WARN: Type inference failed for: r0v0, types: [io.ktor.http.URLBuilder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v4, types: [io.ktor.util.StringValuesImpl, io.ktor.http.Parameters] */
    /* JADX WARN: Type inference failed for: r4v3, types: [kotlinx.io.Buffer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6, types: [io.ktor.util.StringValuesBuilderImpl, io.ktor.http.ParametersBuilderImpl] */
    public static final Url a(String str) {
        String str2;
        String str3;
        str.getClass();
        Parameters.a.getClass();
        Parameters.Companion.b.getClass();
        ?? obj = new Object();
        obj.a = "";
        obj.b = false;
        obj.c = 0;
        obj.d = null;
        obj.e = null;
        obj.f = null;
        Set set = CodecsKt.a;
        Charset charset = Charsets.a;
        charset.getClass();
        StringBuilder sb = new StringBuilder();
        charset.newEncoder().getClass();
        ?? obj2 = new Object();
        while (obj2.l != 0) {
            while (obj2.l != 0) {
                byte readByte = obj2.readByte();
                Byte valueOf = Byte.valueOf(readByte);
                if (readByte == 32) {
                    Set set2 = CodecsKt.a;
                    sb.append("%20");
                } else if (!CodecsKt.a.contains(valueOf) && !CodecsKt.c.contains(valueOf)) {
                    sb.append(CodecsKt.e(readByte));
                } else {
                    sb.append((char) readByte);
                }
            }
        }
        obj.g = sb.toString();
        EmptyList emptyList = EmptyList.j;
        int i = 10;
        obj.h = new ArrayList(CollectionsKt.m(emptyList, 10));
        ?? stringValuesBuilderImpl = new StringValuesBuilderImpl();
        obj.i = stringValuesBuilderImpl;
        obj.j = new UrlDecodedParametersBuilder(stringValuesBuilderImpl);
        List list = URLParserKt.a;
        if (!StringsKt.t(str)) {
            try {
                URLParserKt.b(obj, str);
            } catch (Throwable th) {
                throw new IllegalStateException("Fail to parse url: ".concat(str), th);
            }
        }
        obj.a();
        URLProtocol uRLProtocol = obj.d;
        String str4 = obj.a;
        int i2 = obj.c;
        List list2 = obj.h;
        ArrayList arrayList = new ArrayList(CollectionsKt.m(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(CodecsKt.c((String) it.next()));
        }
        ParametersBuilderImpl parametersBuilderImpl = obj.j.a;
        StringValuesBuilderImpl stringValuesBuilderImpl2 = new StringValuesBuilderImpl();
        for (String str5 : parametersBuilderImpl.a.keySet()) {
            str5.getClass();
            List list3 = (List) parametersBuilderImpl.a.get(str5);
            if (list3 == null) {
                list3 = emptyList;
            }
            String d = CodecsKt.d(str5, 0, 0, 15);
            ArrayList arrayList2 = new ArrayList(CollectionsKt.m(list3, i));
            Iterator it2 = list3.iterator();
            while (it2.hasNext()) {
                arrayList2.add(CodecsKt.d((String) it2.next(), 0, 0, 11));
            }
            stringValuesBuilderImpl2.a(arrayList2, d);
            i = 10;
        }
        Map map = stringValuesBuilderImpl2.a;
        map.getClass();
        ?? stringValuesImpl = new StringValuesImpl(true, map);
        String d2 = CodecsKt.d(obj.g, 0, 0, 15);
        String str6 = obj.e;
        if (str6 != null) {
            str2 = CodecsKt.c(str6);
        } else {
            str2 = null;
        }
        String str7 = obj.f;
        if (str7 != null) {
            str3 = CodecsKt.c(str7);
        } else {
            str3 = null;
        }
        obj.a();
        StringBuilder sb2 = new StringBuilder(256);
        URLBuilderKt.a(obj, sb2);
        return new Url(uRLProtocol, str4, i2, arrayList, stringValuesImpl, d2, str2, str3, sb2.toString());
    }
}
