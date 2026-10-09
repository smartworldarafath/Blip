package kotlinx.serialization.json.internal;

import kotlin.text.UStringsKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.AbstractDecoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.modules.SerializersModule;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonDecoderForUnsignedTypes extends AbstractDecoder {
    public final StringJsonLexer a;
    public final SerializersModule b;

    public JsonDecoderForUnsignedTypes(StringJsonLexer stringJsonLexer, Json json) {
        json.getClass();
        this.a = stringJsonLexer;
        this.b = json.b;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final SerializersModule b() {
        return this.b;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final int m() {
        StringJsonLexer stringJsonLexer = this.a;
        String h = stringJsonLexer.h();
        try {
            return UStringsKt.b(h);
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.j(stringJsonLexer, "Failed to parse type 'UInt' for input '" + h + '\'', 0, null, 6);
            throw null;
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final long q() {
        StringJsonLexer stringJsonLexer = this.a;
        String h = stringJsonLexer.h();
        try {
            return UStringsKt.d(h);
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.j(stringJsonLexer, "Failed to parse type 'ULong' for input '" + h + '\'', 0, null, 6);
            throw null;
        }
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int s(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        throw new IllegalStateException("unsupported");
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final byte y() {
        StringJsonLexer stringJsonLexer = this.a;
        String h = stringJsonLexer.h();
        try {
            return UStringsKt.a(h);
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.j(stringJsonLexer, "Failed to parse type 'UByte' for input '" + h + '\'', 0, null, 6);
            throw null;
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final short z() {
        StringJsonLexer stringJsonLexer = this.a;
        String h = stringJsonLexer.h();
        try {
            return UStringsKt.f(h);
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.j(stringJsonLexer, "Failed to parse type 'UShort' for input '" + h + '\'', 0, null, 6);
            throw null;
        }
    }
}
