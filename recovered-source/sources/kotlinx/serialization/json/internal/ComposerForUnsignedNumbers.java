package kotlinx.serialization.json.internal;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComposerForUnsignedNumbers extends Composer {
    public final boolean c;

    public ComposerForUnsignedNumbers(JsonToStringWriter jsonToStringWriter, boolean z) {
        super(jsonToStringWriter);
        this.c = z;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void b(byte b) {
        if (this.c) {
            h(String.valueOf(b & 255));
        } else {
            f(String.valueOf(b & 255));
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void d(int i) {
        boolean z = this.c;
        String unsignedString = Integer.toUnsignedString(i);
        if (z) {
            h(unsignedString);
        } else {
            f(unsignedString);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void e(long j) {
        boolean z = this.c;
        String unsignedString = Long.toUnsignedString(j);
        if (z) {
            h(unsignedString);
        } else {
            f(unsignedString);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void g(short s) {
        if (this.c) {
            h(String.valueOf(s & 65535));
        } else {
            f(String.valueOf(s & 65535));
        }
    }
}
