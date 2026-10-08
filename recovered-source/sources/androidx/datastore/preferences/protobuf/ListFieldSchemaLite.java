package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ListFieldSchemaLite implements ListFieldSchema {
    public final Internal.ProtobufList a(long j, Object obj) {
        int i;
        Internal.ProtobufList protobufList = (Internal.ProtobufList) UnsafeUtil.c.h(j, obj);
        if (!((AbstractProtobufList) protobufList).j) {
            int size = protobufList.size();
            if (size == 0) {
                i = 10;
            } else {
                i = size * 2;
            }
            Internal.ProtobufList d = ((ProtobufArrayList) protobufList).d(i);
            UnsafeUtil.o(obj, j, d);
            return d;
        }
        return protobufList;
    }
}
