package kotlinx.serialization.json;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonConfiguration {
    public final boolean a;
    public final String b;
    public final String c;
    public final boolean d;
    public final ClassDiscriminatorMode e;
    public final boolean f;

    public JsonConfiguration() {
        ClassDiscriminatorMode classDiscriminatorMode = ClassDiscriminatorMode.l;
        this.a = true;
        this.b = "    ";
        this.c = "type";
        this.d = true;
        this.e = classDiscriminatorMode;
        this.f = true;
    }

    public final String toString() {
        return "JsonConfiguration(encodeDefaults=false, ignoreUnknownKeys=false, isLenient=false, allowStructuredMapKeys=false, prettyPrint=false, explicitNulls=" + this.a + ", prettyPrintIndent='" + this.b + "', coerceInputValues=false, useArrayPolymorphism=false, classDiscriminator='" + this.c + "', allowSpecialFloatingPointValues=false, useAlternativeNames=" + this.d + ", namingStrategy=null, decodeEnumsCaseInsensitive=false, allowTrailingComma=false, allowComments=false, classDiscriminatorMode=" + this.e + ", exceptionsWithDebugInfo=" + this.f + ')';
    }
}
