package io.ktor.http;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.EmptyList;
import kotlin.text.CharsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class QueryKt {
    public static final void a(ParametersBuilderImpl parametersBuilderImpl, String str, int i, int i2, int i3) {
        if (i2 == -1) {
            int c = c(str, i, i3);
            int b = b(str, c, i3);
            if (b > c) {
                parametersBuilderImpl.a(EmptyList.j, str.substring(c, b));
                return;
            }
            return;
        }
        int c2 = c(str, i, i2);
        int b2 = b(str, c2, i2);
        if (b2 > c2) {
            String substring = str.substring(c2, b2);
            int c3 = c(str, i2 + 1, i3);
            String substring2 = str.substring(c3, b(str, c3, i3));
            substring.getClass();
            substring2.getClass();
            Map map = parametersBuilderImpl.a;
            List list = (List) map.get(substring);
            if (list == null) {
                list = new ArrayList();
                map.put(substring, list);
            }
            list.add(substring2);
        }
    }

    public static final int b(String str, int i, int i2) {
        while (i2 > i && CharsKt.c(str.charAt(i2 - 1))) {
            i2--;
        }
        return i2;
    }

    public static final int c(String str, int i, int i2) {
        while (i < i2 && CharsKt.c(str.charAt(i))) {
            i++;
        }
        return i;
    }
}
