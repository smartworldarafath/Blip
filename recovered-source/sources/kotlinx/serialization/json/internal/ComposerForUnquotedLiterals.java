package kotlinx.serialization.json.internal;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComposerForUnquotedLiterals extends Composer {
    public final boolean c;

    public ComposerForUnquotedLiterals(JsonToStringWriter jsonToStringWriter, boolean z) {
        super(jsonToStringWriter);
        this.c = z;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void h(String str) {
        str.getClass();
        if (this.c) {
            super.h(str);
        } else {
            this.a.c(str);
        }
    }
}
