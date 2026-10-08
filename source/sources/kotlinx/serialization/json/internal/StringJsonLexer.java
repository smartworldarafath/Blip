package kotlinx.serialization.json.internal;

import defpackage.q;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.JsonConfiguration;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class StringJsonLexer extends AbstractJsonLexer {
    public final String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringJsonLexer(String str, JsonConfiguration jsonConfiguration) {
        super(jsonConfiguration);
        str.getClass();
        this.f = str;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final String c() {
        String sb;
        char c;
        String str;
        s('\"');
        int i = this.b;
        String str2 = this.f;
        int q = StringsKt.q(str2, '\"', i, 4);
        if (q == -1) {
            h();
            int i2 = this.b;
            if (i2 != str2.length() && i2 >= 0) {
                str = String.valueOf(str2.charAt(i2));
            } else {
                str = "EOF";
            }
            AbstractJsonLexer.j(this, q.i("Expected quotation mark '\"', but had '", str, "' instead"), i2, null, 4);
            throw null;
        }
        int i3 = i;
        while (i3 < q) {
            if (str2.charAt(i3) == '\\') {
                int i4 = this.b;
                char charAt = str2.charAt(i3);
                boolean z = false;
                while (true) {
                    StringBuilder sb2 = this.e;
                    if (charAt != '\"') {
                        if (charAt == '\\') {
                            sb2.append((CharSequence) str2, i4, i3);
                            int n = n(i3 + 1);
                            if (n != -1) {
                                int i5 = n + 1;
                                char charAt2 = str2.charAt(n);
                                if (charAt2 == 'u') {
                                    i5 = a(str2, i5);
                                } else {
                                    if (charAt2 < 'u') {
                                        c = CharMappings.a[charAt2];
                                    } else {
                                        c = 0;
                                    }
                                    if (c != 0) {
                                        sb2.append(c);
                                    } else {
                                        AbstractJsonLexer.j(this, "Invalid escaped char '" + charAt2 + '\'', 0, null, 6);
                                        throw null;
                                    }
                                }
                                i4 = n(i5);
                                if (i4 == -1) {
                                    AbstractJsonLexer.j(this, "Unexpected EOF", i4, null, 4);
                                    throw null;
                                }
                            } else {
                                AbstractJsonLexer.j(this, "Expected escape sequence to continue, got EOF", 0, null, 6);
                                throw null;
                            }
                        } else {
                            i3++;
                            if (i3 >= str2.length()) {
                                sb2.append((CharSequence) str2, i4, i3);
                                i4 = n(i3);
                                if (i4 == -1) {
                                    AbstractJsonLexer.j(this, "Unexpected EOF", i4, null, 4);
                                    throw null;
                                }
                            } else {
                                continue;
                                charAt = str2.charAt(i3);
                            }
                        }
                        i3 = i4;
                        z = true;
                        charAt = str2.charAt(i3);
                    } else {
                        if (!z) {
                            sb = str2.subSequence(i4, i3).toString();
                        } else {
                            sb2.append((CharSequence) str2, i4, i3);
                            sb = sb2.toString();
                            sb2.setLength(0);
                        }
                        this.b = i3 + 1;
                        return sb;
                    }
                }
            } else {
                i3++;
            }
        }
        this.b = q + 1;
        return str2.substring(i, q);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public byte d() {
        String str;
        int i = this.b;
        while (true) {
            str = this.f;
            if (i == -1 || i >= str.length()) {
                break;
            }
            int i2 = i + 1;
            char charAt = str.charAt(i);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                this.b = i2;
                return AbstractJsonLexerKt.a(charAt);
            }
            i = i2;
        }
        this.b = str.length();
        return (byte) 10;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final int n(int i) {
        if (i < this.f.length()) {
            return i;
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public int o() {
        char charAt;
        int i = this.b;
        if (i == -1) {
            return i;
        }
        while (true) {
            String str = this.f;
            if (i >= str.length() || !((charAt = str.charAt(i)) == ' ' || charAt == '\n' || charAt == '\r' || charAt == '\t')) {
                break;
            }
            i++;
        }
        this.b = i;
        return i;
    }

    public boolean r() {
        int i = this.b;
        if (i == -1) {
            return false;
        }
        while (true) {
            String str = this.f;
            if (i < str.length()) {
                char charAt = str.charAt(i);
                if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                    this.b = i;
                    if (charAt == ',' || charAt == ':' || charAt == ']' || charAt == '}') {
                        return false;
                    }
                    return true;
                }
                i++;
            } else {
                this.b = i;
                return false;
            }
        }
    }

    public void s(char c) {
        int i = this.b;
        if (i == -1) {
            q(c);
            throw null;
        }
        while (true) {
            String str = this.f;
            if (i < str.length()) {
                int i2 = i + 1;
                char charAt = str.charAt(i);
                if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                    this.b = i2;
                    if (charAt == c) {
                        return;
                    }
                    q(c);
                    throw null;
                }
                i = i2;
            } else {
                this.b = -1;
                q(c);
                throw null;
            }
        }
    }
}
