package net.blip.libblip;

import bsarchive.AnyItem;
import bsarchive.File;
import bsarchive.FolderStub;
import bsarchive.Metadata;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.blip.android.PathDecoderAndroid;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Metadata_DerivedKt {
    public static final String a(Metadata metadata, String str) {
        metadata.getClass();
        str.getClass();
        String str2 = (String) metadata.n.get(str);
        if (str2 == null) {
            return null;
        }
        PathDecoderAndroid pathDecoderAndroid = PathDecoder$Companion.a;
        if (pathDecoderAndroid != null) {
            return pathDecoderAndroid.a(str2);
        }
        Intrinsics.e("shared");
        throw null;
    }

    public static final ArrayList b(Metadata metadata) {
        metadata.getClass();
        List Q = CollectionsKt.Q(c(metadata));
        ArrayList arrayList = new ArrayList();
        Iterator it = Q.iterator();
        while (it.hasNext()) {
            String a = a(metadata, (String) it.next());
            if (a != null) {
                arrayList.add(a);
            }
        }
        return arrayList;
    }

    public static final ArrayList c(Metadata metadata) {
        metadata.getClass();
        Set keySet = metadata.m.keySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : keySet) {
            if (!StringsKt.i((String) obj, "/", false)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final long d(Metadata metadata) {
        long j;
        metadata.getClass();
        long j2 = 0;
        for (AnyItem anyItem : metadata.m.values()) {
            File file = anyItem.m;
            if (file != null) {
                j = file.m;
            } else {
                FolderStub folderStub = anyItem.p;
                if (folderStub != null) {
                    j = folderStub.m;
                }
            }
            j2 += j;
        }
        return j2;
    }
}
