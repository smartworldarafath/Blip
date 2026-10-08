package com.squareup.wire;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.WireEnum;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EnumAdapter<E extends WireEnum> extends ProtoAdapter<E> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnumAdapter(ClassReference classReference, Syntax syntax, WireEnum wireEnum) {
        super(FieldEncoding.k, classReference, null, syntax, wireEnum, 0);
        syntax.getClass();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        int o = ((ByteArrayProtoReader32) protoReader32).o();
        WireEnum j = j(o);
        if (j != null) {
            return j;
        }
        throw new ProtoAdapter.EnumConstantNotFoundException(o, this.b);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        int p = protoReader.p();
        WireEnum j = j(p);
        if (j != null) {
            return j;
        }
        throw new ProtoAdapter.EnumConstantNotFoundException(p, this.b);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        WireEnum wireEnum = (WireEnum) obj;
        protoWriter.getClass();
        wireEnum.getClass();
        protoWriter.b(wireEnum.getValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        WireEnum wireEnum = (WireEnum) obj;
        reverseProtoWriter.getClass();
        wireEnum.getClass();
        reverseProtoWriter.g(wireEnum.getValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        WireEnum wireEnum = (WireEnum) obj;
        wireEnum.getClass();
        return ProtoWriter.Companion.a(wireEnum.getValue());
    }

    public abstract WireEnum j(int i);
}
