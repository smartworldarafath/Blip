package kotlinx.serialization.json.internal;

import defpackage.u2;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.DeepRecursiveFunction;
import kotlin.DeepRecursiveKt;
import kotlin.DeepRecursiveScope;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonTreeReader {
    public final StringJsonLexer a;
    public int b;

    public JsonTreeReader(JsonConfiguration jsonConfiguration, StringJsonLexer stringJsonLexer) {
        this.a = stringJsonLexer;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(JsonTreeReader jsonTreeReader, DeepRecursiveScope deepRecursiveScope, BaseContinuationImpl baseContinuationImpl) {
        JsonTreeReader$readObject$2 jsonTreeReader$readObject$2;
        int i;
        LinkedHashMap linkedHashMap;
        DeepRecursiveScope deepRecursiveScope2;
        byte b;
        StringJsonLexer stringJsonLexer;
        JsonTreeReader jsonTreeReader2;
        StringJsonLexer stringJsonLexer2 = jsonTreeReader.a;
        if (baseContinuationImpl instanceof JsonTreeReader$readObject$2) {
            jsonTreeReader$readObject$2 = (JsonTreeReader$readObject$2) baseContinuationImpl;
            int i2 = jsonTreeReader$readObject$2.t;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                jsonTreeReader$readObject$2.t = i2 - Integer.MIN_VALUE;
                Object obj = jsonTreeReader$readObject$2.r;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = jsonTreeReader$readObject$2.t;
                int i3 = 0;
                if (i == 0) {
                    if (i == 1) {
                        int i4 = jsonTreeReader$readObject$2.q;
                        String str = jsonTreeReader$readObject$2.p;
                        linkedHashMap = jsonTreeReader$readObject$2.o;
                        jsonTreeReader2 = jsonTreeReader$readObject$2.n;
                        deepRecursiveScope2 = jsonTreeReader$readObject$2.m;
                        ResultKt.b(obj);
                        linkedHashMap.put(str, (JsonElement) obj);
                        b = jsonTreeReader2.a.d();
                        if (b != 4) {
                            if (b != 7) {
                                AbstractJsonLexer.j(jsonTreeReader2.a, "Expected end of the object or comma", 0, null, 6);
                                throw null;
                            }
                            StringJsonLexer stringJsonLexer3 = jsonTreeReader2.a;
                            if (b != 6) {
                                stringJsonLexer3.e((byte) 7);
                            } else if (b == 4) {
                                JsonExceptionsKt.c(stringJsonLexer3);
                                throw null;
                            }
                            return new JsonObject(linkedHashMap);
                        }
                        i3 = i4;
                        jsonTreeReader = jsonTreeReader2;
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    byte e = stringJsonLexer2.e((byte) 6);
                    if (stringJsonLexer2.l() != 4) {
                        linkedHashMap = new LinkedHashMap();
                        deepRecursiveScope2 = deepRecursiveScope;
                        b = e;
                    } else {
                        AbstractJsonLexer.j(stringJsonLexer2, "Unexpected leading comma", 0, null, 6);
                        throw null;
                    }
                }
                stringJsonLexer = jsonTreeReader.a;
                if (!stringJsonLexer.r()) {
                    String g = stringJsonLexer.g();
                    stringJsonLexer.e((byte) 5);
                    jsonTreeReader$readObject$2.m = deepRecursiveScope2;
                    jsonTreeReader$readObject$2.n = jsonTreeReader;
                    jsonTreeReader$readObject$2.o = linkedHashMap;
                    jsonTreeReader$readObject$2.p = g;
                    jsonTreeReader$readObject$2.q = i3;
                    jsonTreeReader$readObject$2.t = 1;
                    deepRecursiveScope2.a(jsonTreeReader$readObject$2);
                    return coroutineSingletons;
                }
                jsonTreeReader2 = jsonTreeReader;
                StringJsonLexer stringJsonLexer32 = jsonTreeReader2.a;
                if (b != 6) {
                }
                return new JsonObject(linkedHashMap);
            }
        }
        jsonTreeReader$readObject$2 = new JsonTreeReader$readObject$2(jsonTreeReader, baseContinuationImpl);
        Object obj2 = jsonTreeReader$readObject$2.r;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = jsonTreeReader$readObject$2.t;
        int i32 = 0;
        if (i == 0) {
        }
        stringJsonLexer = jsonTreeReader.a;
        if (!stringJsonLexer.r()) {
        }
    }

    public final JsonElement b() {
        JsonElement jsonObject;
        StringJsonLexer stringJsonLexer = this.a;
        byte l = stringJsonLexer.l();
        if (l == 1) {
            return d(true);
        }
        if (l == 0) {
            return d(false);
        }
        if (l == 6) {
            int i = this.b + 1;
            this.b = i;
            if (i == 200) {
                jsonObject = (JsonElement) DeepRecursiveKt.a(new DeepRecursiveFunction(new JsonTreeReader$readDeepRecursive$1(this, null)));
            } else {
                byte e = stringJsonLexer.e((byte) 6);
                if (stringJsonLexer.l() != 4) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    while (true) {
                        if (!stringJsonLexer.r()) {
                            break;
                        }
                        String g = stringJsonLexer.g();
                        stringJsonLexer.e((byte) 5);
                        linkedHashMap.put(g, b());
                        e = stringJsonLexer.d();
                        if (e != 4) {
                            if (e != 7) {
                                AbstractJsonLexer.j(stringJsonLexer, "Expected end of the object or comma", 0, null, 6);
                                throw null;
                            }
                        }
                    }
                    if (e == 6) {
                        stringJsonLexer.e((byte) 7);
                    } else if (e == 4) {
                        JsonExceptionsKt.c(stringJsonLexer);
                        throw null;
                    }
                    jsonObject = new JsonObject(linkedHashMap);
                } else {
                    AbstractJsonLexer.j(stringJsonLexer, "Unexpected leading comma", 0, null, 6);
                    throw null;
                }
            }
            this.b--;
            return jsonObject;
        }
        if (l == 8) {
            return c();
        }
        AbstractJsonLexer.j(stringJsonLexer, "Cannot read Json element because of unexpected ".concat(AbstractJsonLexerKt.b(l)), 0, null, 6);
        throw null;
    }

    public final JsonArray c() {
        boolean z;
        StringJsonLexer stringJsonLexer = this.a;
        byte d = stringJsonLexer.d();
        if (stringJsonLexer.l() != 4) {
            ArrayList arrayList = new ArrayList();
            while (stringJsonLexer.r()) {
                arrayList.add(b());
                d = stringJsonLexer.d();
                if (d != 4) {
                    if (d == 9) {
                        z = true;
                    } else {
                        z = false;
                    }
                    int i = stringJsonLexer.b;
                    if (!z) {
                        AbstractJsonLexer.j(stringJsonLexer, "Expected end of the array or comma", i, null, 4);
                        throw null;
                    }
                }
            }
            if (d == 8) {
                stringJsonLexer.e((byte) 9);
            } else if (d == 4) {
                JsonExceptionsKt.b(stringJsonLexer, "array");
                throw null;
            }
            return new JsonArray(arrayList);
        }
        AbstractJsonLexer.j(stringJsonLexer, "Unexpected leading comma", 0, null, 6);
        throw null;
    }

    public final JsonPrimitive d(boolean z) {
        String g;
        StringJsonLexer stringJsonLexer = this.a;
        if (!z) {
            g = stringJsonLexer.h();
        } else {
            g = stringJsonLexer.g();
        }
        if (!z && Intrinsics.a(g, "null")) {
            return JsonNull.INSTANCE;
        }
        return new JsonLiteral(g, z);
    }
}
