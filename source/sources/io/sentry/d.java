package io.sentry;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.JsonObjectDeserializer;
import io.sentry.Scope;
import io.sentry.util.LazyEvaluator;
import io.sentry.util.SentryRandom;
import io.sentry.util.UUIDStringUtils;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements JsonObjectDeserializer.NextValue, Scope.IWithSession, LazyEvaluator.Evaluator {
    public final /* synthetic */ int j;

    public /* synthetic */ d(int i) {
        this.j = i;
    }

    public static /* synthetic */ void d() {
        throw new IllegalStateException();
    }

    public static /* synthetic */ void e(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    public static /* synthetic */ void f(String str) {
        throw new NullPointerException(str);
    }

    public static /* synthetic */ void g(String str, Object obj, Object obj2) {
        throw new IllegalArgumentException(str + obj + obj2);
    }

    public static /* synthetic */ void h(StringBuilder sb, Object obj) {
        sb.append(obj);
        throw new IllegalStateException(sb.toString());
    }

    public static /* synthetic */ void i() {
        throw new ClassCastException();
    }

    @Override // io.sentry.JsonObjectDeserializer.NextValue
    public Object b() {
        return null;
    }

    @Override // io.sentry.util.LazyEvaluator.Evaluator
    public Object c() {
        switch (this.j) {
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                NoOpScope noOpScope = NoOpScope.b;
                return SentryOptions.empty();
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                NoOpScopes noOpScopes = NoOpScopes.b;
                return SentryOptions.empty();
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
            case KeyModifiers.a /* 9 */:
            default:
                byte[] bArr = new byte[8];
                SentryRandom.a().b(bArr);
                byte b = (byte) (bArr[6] & 15);
                bArr[6] = b;
                bArr[6] = (byte) (b | 64);
                long j = 0;
                for (int i = 0; i < 8; i++) {
                    j = (j << 8) | (bArr[i] & 255);
                }
                char[] cArr = new char[16];
                UUIDStringUtils.a(cArr, j);
                return new String(cArr);
            case KeyModifiers.b /* 10 */:
                String str = SentryOptions.DEFAULT_PROPAGATION_TARGETS;
                return new SentryAutoDateProvider();
        }
    }

    @Override // io.sentry.Scope.IWithSession
    public void a(Session session) {
    }
}
