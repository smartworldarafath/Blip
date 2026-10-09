package io.ktor.http;

import defpackage.qg;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class URLBuilderKt {
    public static final void a(URLBuilder uRLBuilder, StringBuilder sb) {
        List list;
        sb.append(uRLBuilder.b().j);
        String str = uRLBuilder.b().j;
        switch (str.hashCode()) {
            case -1081572750:
                if (str.equals("mailto")) {
                    CharSequence c = c(uRLBuilder);
                    CharSequence charSequence = uRLBuilder.a;
                    sb.append(":");
                    sb.append(c);
                    sb.append(charSequence);
                    return;
                }
                break;
            case 114715:
                if (str.equals("tel")) {
                    CharSequence charSequence2 = uRLBuilder.a;
                    sb.append(":");
                    sb.append(charSequence2);
                    return;
                }
                break;
            case 3076010:
                if (str.equals("data")) {
                    CharSequence charSequence3 = uRLBuilder.a;
                    sb.append(":");
                    sb.append(charSequence3);
                    return;
                }
                break;
            case 3143036:
                if (str.equals("file")) {
                    CharSequence charSequence4 = uRLBuilder.a;
                    String b = b(uRLBuilder);
                    sb.append("://");
                    sb.append(charSequence4);
                    if (!StringsKt.K(b)) {
                        sb.append('/');
                    }
                    sb.append((CharSequence) b);
                    return;
                }
                break;
            case 92611469:
                if (str.equals("about")) {
                    CharSequence charSequence5 = uRLBuilder.a;
                    sb.append(":");
                    sb.append(charSequence5);
                    return;
                }
                break;
        }
        sb.append("://");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(c(uRLBuilder));
        sb2.append(uRLBuilder.a);
        int i = uRLBuilder.c;
        if (i != 0 && i != uRLBuilder.b().k) {
            sb2.append(":");
            sb2.append(String.valueOf(uRLBuilder.c));
        }
        sb.append(sb2.toString());
        String b2 = b(uRLBuilder);
        ParametersBuilderImpl parametersBuilderImpl = uRLBuilder.i;
        boolean z = uRLBuilder.b;
        b2.getClass();
        parametersBuilderImpl.getClass();
        Map map = parametersBuilderImpl.a;
        if (!StringsKt.t(b2) && !StringsKt.J(b2, "/", false)) {
            sb.append('/');
        }
        sb.append((CharSequence) b2);
        if (!map.isEmpty() || z) {
            sb.append("?");
        }
        Set entrySet = map.entrySet();
        entrySet.getClass();
        Set<Map.Entry> unmodifiableSet = Collections.unmodifiableSet(entrySet);
        unmodifiableSet.getClass();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : unmodifiableSet) {
            String str2 = (String) entry.getKey();
            List list2 = (List) entry.getValue();
            if (list2.isEmpty()) {
                list = CollectionsKt.B(new Pair(str2, null));
            } else {
                ArrayList arrayList2 = new ArrayList(CollectionsKt.m(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new Pair(str2, (String) it.next()));
                }
                list = arrayList2;
            }
            CollectionsKt.g(arrayList, list);
        }
        CollectionsKt.x(arrayList, sb, "&", new qg(20), 60);
        if (uRLBuilder.g.length() > 0) {
            sb.append('#');
            sb.append(uRLBuilder.g);
        }
    }

    public static final String b(URLBuilder uRLBuilder) {
        List list = uRLBuilder.h;
        if (list.isEmpty()) {
            return "";
        }
        if (list.size() == 1) {
            if (((CharSequence) CollectionsKt.s(list)).length() == 0) {
                return "/";
            }
            return (String) CollectionsKt.s(list);
        }
        return CollectionsKt.y(list, "/", null, null, null, 62);
    }

    public static final String c(URLBuilder uRLBuilder) {
        StringBuilder sb = new StringBuilder();
        String str = uRLBuilder.e;
        String str2 = uRLBuilder.f;
        if (str != null) {
            sb.append(str);
            if (str2 != null) {
                sb.append(':');
                sb.append(str2);
            }
            sb.append("@");
        }
        return sb.toString();
    }

    public static final void d(URLBuilder uRLBuilder, String str) {
        List arrayList;
        if (StringsKt.t(str)) {
            arrayList = EmptyList.j;
        } else if (str.equals("/")) {
            arrayList = URLParserKt.a;
        } else {
            arrayList = new ArrayList(StringsKt.H(str, new char[]{'/'}));
        }
        arrayList.getClass();
        uRLBuilder.h = arrayList;
    }
}
