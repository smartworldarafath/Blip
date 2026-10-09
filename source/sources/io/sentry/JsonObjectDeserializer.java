package io.sentry;

import io.sentry.vendor.gson.stream.JsonToken;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonObjectDeserializer {
    public final ArrayList a = new ArrayList();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.JsonObjectDeserializer$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            a = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[JsonToken.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[JsonToken.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[JsonToken.END_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[JsonToken.NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[JsonToken.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[JsonToken.NUMBER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[JsonToken.BOOLEAN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[JsonToken.NULL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[JsonToken.END_DOCUMENT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface NextValue {
        Object b();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Token {
        Object getValue();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TokenArray implements Token {
        public final ArrayList a = new ArrayList();

        @Override // io.sentry.JsonObjectDeserializer.Token
        public final Object getValue() {
            return this.a;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TokenMap implements Token {
        public final HashMap a = new HashMap();

        @Override // io.sentry.JsonObjectDeserializer.Token
        public final Object getValue() {
            return this.a;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TokenName implements Token {
        public final String a;

        public TokenName(String str) {
            this.a = str;
        }

        @Override // io.sentry.JsonObjectDeserializer.Token
        public final Object getValue() {
            return this.a;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TokenPrimitive implements Token {
        public final Object a;

        public TokenPrimitive(Object obj) {
            this.a = obj;
        }

        @Override // io.sentry.JsonObjectDeserializer.Token
        public final Object getValue() {
            return this.a;
        }
    }

    public final Token a() {
        ArrayList arrayList = this.a;
        if (arrayList.isEmpty()) {
            return null;
        }
        return (Token) arrayList.get(arrayList.size() - 1);
    }

    public final boolean b() {
        if (this.a.size() == 1) {
            return true;
        }
        Token a = a();
        d();
        if (a() instanceof TokenName) {
            TokenName tokenName = (TokenName) a();
            d();
            TokenMap tokenMap = (TokenMap) a();
            if (tokenName != null && a != null && tokenMap != null) {
                tokenMap.a.put(tokenName.a, a.getValue());
                return false;
            }
            return false;
        }
        if (a() instanceof TokenArray) {
            TokenArray tokenArray = (TokenArray) a();
            if (a != null && tokenArray != null) {
                tokenArray.a.add(a.getValue());
                return false;
            }
            return false;
        }
        return false;
    }

    public final boolean c(NextValue nextValue) {
        Object b = nextValue.b();
        if (a() == null && b != null) {
            this.a.add(new TokenPrimitive(b));
            return true;
        }
        if (a() instanceof TokenName) {
            TokenName tokenName = (TokenName) a();
            d();
            ((TokenMap) a()).a.put(tokenName.a, b);
            return false;
        }
        if (a() instanceof TokenArray) {
            ((TokenArray) a()).a.add(b);
            return false;
        }
        return false;
    }

    public final void d() {
        ArrayList arrayList = this.a;
        if (arrayList.isEmpty()) {
            return;
        }
        arrayList.remove(arrayList.size() - 1);
    }
}
