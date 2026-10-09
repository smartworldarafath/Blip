package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.proto.Protobuf;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AtProtobuf {
    public int a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ProtobufImpl implements Protobuf {
        public final int a;

        public ProtobufImpl(int i) {
            this.a = i;
        }

        @Override // java.lang.annotation.Annotation
        public final Class annotationType() {
            return Protobuf.class;
        }

        @Override // java.lang.annotation.Annotation
        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Protobuf) {
                    Protobuf protobuf = (Protobuf) obj;
                    if (this.a == protobuf.tag() && Protobuf.IntEncoding.j.equals(protobuf.intEncoding())) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }

        @Override // java.lang.annotation.Annotation
        public final int hashCode() {
            return (this.a ^ 14552422) + (Protobuf.IntEncoding.j.hashCode() ^ 2041407134);
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public final Protobuf.IntEncoding intEncoding() {
            return Protobuf.IntEncoding.j;
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public final int tag() {
            return this.a;
        }

        @Override // java.lang.annotation.Annotation
        public final String toString() {
            return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.a + "intEncoding=" + Protobuf.IntEncoding.j + ')';
        }
    }

    public final Protobuf a() {
        return new ProtobufImpl(this.a);
    }
}
