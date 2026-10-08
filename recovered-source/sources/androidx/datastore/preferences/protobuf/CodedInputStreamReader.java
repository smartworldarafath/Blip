package androidx.datastore.preferences.protobuf;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Internal;
import defpackage.u2;
import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CodedInputStreamReader {
    public final CodedInputStream a;
    public int b;
    public int c;
    public int d = 0;

    public CodedInputStreamReader(CodedInputStream codedInputStream) {
        Charset charset = Internal.a;
        this.a = codedInputStream;
        codedInputStream.b = this;
    }

    public final int a() {
        int i = this.d;
        if (i != 0) {
            this.b = i;
            this.d = 0;
        } else {
            this.b = this.a.u();
        }
        int i2 = this.b;
        if (i2 != 0 && i2 != this.c) {
            return i2 >>> 3;
        }
        return Integer.MAX_VALUE;
    }

    public final void b(Object obj, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        int i = this.c;
        this.c = ((this.b >>> 3) << 3) | 4;
        try {
            schema.h(obj, this, extensionRegistryLite);
            if (this.b == this.c) {
            } else {
                throw new IOException("Failed to parse the message.");
            }
        } finally {
            this.c = i;
        }
    }

    public final void c(Object obj, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        CodedInputStream codedInputStream = this.a;
        int v = codedInputStream.v();
        if (codedInputStream.a < 100) {
            int e = codedInputStream.e(v);
            codedInputStream.a++;
            schema.h(obj, this, extensionRegistryLite);
            codedInputStream.a(0);
            codedInputStream.a--;
            codedInputStream.d(e);
            return;
        }
        throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }

    public final void d(Internal.ProtobufList protobufList) {
        int u;
        int i = this.b & 7;
        CodedInputStream codedInputStream = this.a;
        if (i != 0) {
            if (i == 2) {
                int b = codedInputStream.b() + codedInputStream.v();
                do {
                    protobufList.add(Boolean.valueOf(codedInputStream.f()));
                } while (codedInputStream.b() < b);
                v(b);
                return;
            }
            throw InvalidProtocolBufferException.b();
        }
        do {
            protobufList.add(Boolean.valueOf(codedInputStream.f()));
            if (codedInputStream.c()) {
                return;
            } else {
                u = codedInputStream.u();
            }
        } while (u == this.b);
        this.d = u;
    }

    public final ByteString e() {
        w(2);
        return this.a.g();
    }

    public final void f(Internal.ProtobufList protobufList) {
        int u;
        if ((this.b & 7) != 2) {
            throw InvalidProtocolBufferException.b();
        }
        do {
            protobufList.add(e());
            CodedInputStream codedInputStream = this.a;
            if (codedInputStream.c()) {
                return;
            } else {
                u = codedInputStream.u();
            }
        } while (u == this.b);
        this.d = u;
    }

    public final void g(Internal.ProtobufList protobufList) {
        int u;
        int i = this.b & 7;
        CodedInputStream codedInputStream = this.a;
        if (i != 1) {
            if (i == 2) {
                int v = codedInputStream.v();
                if ((v & 7) == 0) {
                    int b = codedInputStream.b() + v;
                    do {
                        protobufList.add(Double.valueOf(codedInputStream.h()));
                    } while (codedInputStream.b() < b);
                    return;
                }
                throw new IOException("Failed to parse the message.");
            }
            throw InvalidProtocolBufferException.b();
        }
        do {
            protobufList.add(Double.valueOf(codedInputStream.h()));
            if (codedInputStream.c()) {
                return;
            } else {
                u = codedInputStream.u();
            }
        } while (u == this.b);
        this.d = u;
    }

    public final void h(Internal.ProtobufList protobufList) {
        int u;
        int i = this.b & 7;
        CodedInputStream codedInputStream = this.a;
        if (i != 0) {
            if (i == 2) {
                int b = codedInputStream.b() + codedInputStream.v();
                do {
                    protobufList.add(Integer.valueOf(codedInputStream.i()));
                } while (codedInputStream.b() < b);
                v(b);
                return;
            }
            throw InvalidProtocolBufferException.b();
        }
        do {
            protobufList.add(Integer.valueOf(codedInputStream.i()));
            if (codedInputStream.c()) {
                return;
            } else {
                u = codedInputStream.u();
            }
        } while (u == this.b);
        this.d = u;
    }

    public final Object i(WireFormat$FieldType wireFormat$FieldType, Class cls, ExtensionRegistryLite extensionRegistryLite) {
        int ordinal = wireFormat$FieldType.ordinal();
        CodedInputStream codedInputStream = this.a;
        switch (ordinal) {
            case 0:
                w(1);
                return Double.valueOf(codedInputStream.h());
            case 1:
                w(5);
                return Float.valueOf(codedInputStream.l());
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                w(0);
                return Long.valueOf(codedInputStream.n());
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                w(0);
                return Long.valueOf(codedInputStream.w());
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                w(0);
                return Integer.valueOf(codedInputStream.m());
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                w(1);
                return Long.valueOf(codedInputStream.k());
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                w(5);
                return Integer.valueOf(codedInputStream.j());
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                w(0);
                return Boolean.valueOf(codedInputStream.f());
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                w(2);
                return codedInputStream.t();
            case KeyModifiers.a /* 9 */:
            default:
                u2.g("unsupported field type.");
                return null;
            case KeyModifiers.b /* 10 */:
                w(2);
                Schema a = Protobuf.c.a(cls);
                GeneratedMessageLite i = a.i();
                c(i, a, extensionRegistryLite);
                a.b(i);
                return i;
            case 11:
                return e();
            case KeyModifiers.c /* 12 */:
                w(0);
                return Integer.valueOf(codedInputStream.v());
            case 13:
                w(0);
                return Integer.valueOf(codedInputStream.i());
            case 14:
                w(5);
                return Integer.valueOf(codedInputStream.o());
            case 15:
                w(1);
                return Long.valueOf(codedInputStream.p());
            case 16:
                w(0);
                return Integer.valueOf(codedInputStream.q());
            case 17:
                w(0);
                return Long.valueOf(codedInputStream.r());
        }
    }

    public final void j(Internal.ProtobufList protobufList) {
        int u;
        int i = this.b & 7;
        CodedInputStream codedInputStream = this.a;
        if (i != 2) {
            if (i != 5) {
                throw InvalidProtocolBufferException.b();
            }
            do {
                protobufList.add(Integer.valueOf(codedInputStream.j()));
                if (!codedInputStream.c()) {
                    u = codedInputStream.u();
                } else {
                    return;
                }
            } while (u == this.b);
            this.d = u;
            return;
        }
        int v = codedInputStream.v();
        if ((v & 3) == 0) {
            int b = codedInputStream.b() + v;
            do {
                protobufList.add(Integer.valueOf(codedInputStream.j()));
            } while (codedInputStream.b() < b);
            return;
        }
        throw new IOException("Failed to parse the message.");
    }

    public final void k(Internal.ProtobufList protobufList) {
        int u;
        int i = this.b & 7;
        CodedInputStream codedInputStream = this.a;
        if (i != 1) {
            if (i == 2) {
                int v = codedInputStream.v();
                if ((v & 7) == 0) {
                    int b = codedInputStream.b() + v;
                    do {
                        protobufList.add(Long.valueOf(codedInputStream.k()));
                    } while (codedInputStream.b() < b);
                    return;
                }
                throw new IOException("Failed to parse the message.");
            }
            throw InvalidProtocolBufferException.b();
        }
        do {
            protobufList.add(Long.valueOf(codedInputStream.k()));
            if (codedInputStream.c()) {
                return;
            } else {
                u = codedInputStream.u();
            }
        } while (u == this.b);
        this.d = u;
    }

    public final void l(Internal.ProtobufList protobufList) {
        int u;
        int i = this.b & 7;
        CodedInputStream codedInputStream = this.a;
        if (i != 2) {
            if (i != 5) {
                throw InvalidProtocolBufferException.b();
            }
            do {
                protobufList.add(Float.valueOf(codedInputStream.l()));
                if (!codedInputStream.c()) {
                    u = codedInputStream.u();
                } else {
                    return;
                }
            } while (u == this.b);
            this.d = u;
            return;
        }
        int v = codedInputStream.v();
        if ((v & 3) == 0) {
            int b = codedInputStream.b() + v;
            do {
                protobufList.add(Float.valueOf(codedInputStream.l()));
            } while (codedInputStream.b() < b);
            return;
        }
        throw new IOException("Failed to parse the message.");
    }

    public final void m(Internal.ProtobufList protobufList) {
        int u;
        int i = this.b & 7;
        CodedInputStream codedInputStream = this.a;
        if (i != 0) {
            if (i == 2) {
                int b = codedInputStream.b() + codedInputStream.v();
                do {
                    protobufList.add(Integer.valueOf(codedInputStream.m()));
                } while (codedInputStream.b() < b);
                v(b);
                return;
            }
            throw InvalidProtocolBufferException.b();
        }
        do {
            protobufList.add(Integer.valueOf(codedInputStream.m()));
            if (codedInputStream.c()) {
                return;
            } else {
                u = codedInputStream.u();
            }
        } while (u == this.b);
        this.d = u;
    }

    public final void n(Internal.ProtobufList protobufList) {
        int u;
        int i = this.b & 7;
        CodedInputStream codedInputStream = this.a;
        if (i != 0) {
            if (i == 2) {
                int b = codedInputStream.b() + codedInputStream.v();
                do {
                    protobufList.add(Long.valueOf(codedInputStream.n()));
                } while (codedInputStream.b() < b);
                v(b);
                return;
            }
            throw InvalidProtocolBufferException.b();
        }
        do {
            protobufList.add(Long.valueOf(codedInputStream.n()));
            if (codedInputStream.c()) {
                return;
            } else {
                u = codedInputStream.u();
            }
        } while (u == this.b);
        this.d = u;
    }

    public final void o(Internal.ProtobufList protobufList) {
        int u;
        int i = this.b & 7;
        CodedInputStream codedInputStream = this.a;
        if (i != 2) {
            if (i != 5) {
                throw InvalidProtocolBufferException.b();
            }
            do {
                protobufList.add(Integer.valueOf(codedInputStream.o()));
                if (!codedInputStream.c()) {
                    u = codedInputStream.u();
                } else {
                    return;
                }
            } while (u == this.b);
            this.d = u;
            return;
        }
        int v = codedInputStream.v();
        if ((v & 3) == 0) {
            int b = codedInputStream.b() + v;
            do {
                protobufList.add(Integer.valueOf(codedInputStream.o()));
            } while (codedInputStream.b() < b);
            return;
        }
        throw new IOException("Failed to parse the message.");
    }

    public final void p(Internal.ProtobufList protobufList) {
        int u;
        int i = this.b & 7;
        CodedInputStream codedInputStream = this.a;
        if (i != 1) {
            if (i == 2) {
                int v = codedInputStream.v();
                if ((v & 7) == 0) {
                    int b = codedInputStream.b() + v;
                    do {
                        protobufList.add(Long.valueOf(codedInputStream.p()));
                    } while (codedInputStream.b() < b);
                    return;
                }
                throw new IOException("Failed to parse the message.");
            }
            throw InvalidProtocolBufferException.b();
        }
        do {
            protobufList.add(Long.valueOf(codedInputStream.p()));
            if (codedInputStream.c()) {
                return;
            } else {
                u = codedInputStream.u();
            }
        } while (u == this.b);
        this.d = u;
    }

    public final void q(Internal.ProtobufList protobufList) {
        int u;
        int i = this.b & 7;
        CodedInputStream codedInputStream = this.a;
        if (i != 0) {
            if (i == 2) {
                int b = codedInputStream.b() + codedInputStream.v();
                do {
                    protobufList.add(Integer.valueOf(codedInputStream.q()));
                } while (codedInputStream.b() < b);
                v(b);
                return;
            }
            throw InvalidProtocolBufferException.b();
        }
        do {
            protobufList.add(Integer.valueOf(codedInputStream.q()));
            if (codedInputStream.c()) {
                return;
            } else {
                u = codedInputStream.u();
            }
        } while (u == this.b);
        this.d = u;
    }

    public final void r(Internal.ProtobufList protobufList) {
        int u;
        int i = this.b & 7;
        CodedInputStream codedInputStream = this.a;
        if (i != 0) {
            if (i == 2) {
                int b = codedInputStream.b() + codedInputStream.v();
                do {
                    protobufList.add(Long.valueOf(codedInputStream.r()));
                } while (codedInputStream.b() < b);
                v(b);
                return;
            }
            throw InvalidProtocolBufferException.b();
        }
        do {
            protobufList.add(Long.valueOf(codedInputStream.r()));
            if (codedInputStream.c()) {
                return;
            } else {
                u = codedInputStream.u();
            }
        } while (u == this.b);
        this.d = u;
    }

    public final void s(Internal.ProtobufList protobufList, boolean z) {
        String s;
        int u;
        if ((this.b & 7) != 2) {
            throw InvalidProtocolBufferException.b();
        }
        do {
            CodedInputStream codedInputStream = this.a;
            if (z) {
                w(2);
                s = codedInputStream.t();
            } else {
                w(2);
                s = codedInputStream.s();
            }
            protobufList.add(s);
            if (codedInputStream.c()) {
                return;
            } else {
                u = codedInputStream.u();
            }
        } while (u == this.b);
        this.d = u;
    }

    public final void t(Internal.ProtobufList protobufList) {
        int u;
        int i = this.b & 7;
        CodedInputStream codedInputStream = this.a;
        if (i != 0) {
            if (i == 2) {
                int b = codedInputStream.b() + codedInputStream.v();
                do {
                    protobufList.add(Integer.valueOf(codedInputStream.v()));
                } while (codedInputStream.b() < b);
                v(b);
                return;
            }
            throw InvalidProtocolBufferException.b();
        }
        do {
            protobufList.add(Integer.valueOf(codedInputStream.v()));
            if (codedInputStream.c()) {
                return;
            } else {
                u = codedInputStream.u();
            }
        } while (u == this.b);
        this.d = u;
    }

    public final void u(Internal.ProtobufList protobufList) {
        int u;
        int i = this.b & 7;
        CodedInputStream codedInputStream = this.a;
        if (i != 0) {
            if (i == 2) {
                int b = codedInputStream.b() + codedInputStream.v();
                do {
                    protobufList.add(Long.valueOf(codedInputStream.w()));
                } while (codedInputStream.b() < b);
                v(b);
                return;
            }
            throw InvalidProtocolBufferException.b();
        }
        do {
            protobufList.add(Long.valueOf(codedInputStream.w()));
            if (codedInputStream.c()) {
                return;
            } else {
                u = codedInputStream.u();
            }
        } while (u == this.b);
        this.d = u;
    }

    public final void v(int i) {
        if (this.a.b() == i) {
        } else {
            throw InvalidProtocolBufferException.e();
        }
    }

    public final void w(int i) {
        if ((this.b & 7) == i) {
        } else {
            throw InvalidProtocolBufferException.b();
        }
    }

    public final boolean x() {
        int i;
        CodedInputStream codedInputStream = this.a;
        if (!codedInputStream.c() && (i = this.b) != this.c) {
            return codedInputStream.x(i);
        }
        return false;
    }
}
