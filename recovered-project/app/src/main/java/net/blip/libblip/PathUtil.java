package net.blip.libblip;

import java.util.ArrayList;
import java.util.Arrays;
import okio.Path;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PathUtil {
    public static String a(String str, String[] strArr) {
        str.getClass();
        String str2 = Path.k;
        Path a = Path.Companion.a(str);
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str3 : strArr) {
            String str4 = Path.k;
            arrayList.add(Path.Companion.a(str3));
        }
        Path[] pathArr = (Path[]) arrayList.toArray(new Path[0]);
        for (Path path : (Path[]) Arrays.copyOf(pathArr, pathArr.length)) {
            a = a.f(path, false);
        }
        return a.j.s();
    }
}
