package io.github.vinceglb.filekit.dialogs;

import android.webkit.MimeTypeMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FileKitAndroidDialogsInternal {
    public static String[] a(Set set) {
        String[] strArr;
        List B;
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        if (set != null) {
            Set<String> set2 = set;
            ArrayList arrayList = new ArrayList(CollectionsKt.m(set2, 10));
            for (String str : set2) {
                if (Intrinsics.a(str, "csv")) {
                    B = CollectionsKt.C("text/csv", "application/csv", "application/x-csv", "text/comma-separated-values", "text/x-comma-separated-values", "text/x-csv");
                } else {
                    B = CollectionsKt.B(singleton.getMimeTypeFromExtension(str));
                }
                arrayList.add(B);
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                CollectionsKt.g(arrayList2, (Iterable) it.next());
            }
            ArrayList arrayList3 = new ArrayList();
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                String str2 = (String) it2.next();
                if (str2 != null) {
                    arrayList3.add(str2);
                }
            }
            if (arrayList3.isEmpty()) {
                arrayList3 = null;
            }
            if (arrayList3 != null && (strArr = (String[]) arrayList3.toArray(new String[0])) != null) {
                return strArr;
            }
        }
        return new String[]{"*/*"};
    }
}
