package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.PreferencesProto$Value;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MapEntryLite<K, V> {
    public final Metadata a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Metadata<K, V> {
        public final WireFormat$FieldType a;
        public final WireFormat$FieldType b;
        public final Object c;

        public Metadata(WireFormat$FieldType wireFormat$FieldType, WireFormat$FieldType wireFormat$FieldType2, Object obj) {
            this.a = wireFormat$FieldType;
            this.b = wireFormat$FieldType2;
            this.c = obj;
        }
    }

    public MapEntryLite(WireFormat$FieldType wireFormat$FieldType, WireFormat$FieldType wireFormat$FieldType2, PreferencesProto$Value preferencesProto$Value) {
        this.a = new Metadata(wireFormat$FieldType, wireFormat$FieldType2, preferencesProto$Value);
    }
}
