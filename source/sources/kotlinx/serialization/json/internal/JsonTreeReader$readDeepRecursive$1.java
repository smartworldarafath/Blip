package kotlinx.serialization.json.internal;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.DeepRecursiveScope;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.serialization.json.JsonElement;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1", f = "JsonTreeReader.kt", l = {113}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class JsonTreeReader$readDeepRecursive$1 extends RestrictedSuspendLambda implements Function3<DeepRecursiveScope<Unit, JsonElement>, Unit, Continuation<? super JsonElement>, Object> {
    public int l;
    public /* synthetic */ DeepRecursiveScope m;
    public final /* synthetic */ JsonTreeReader n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeReader$readDeepRecursive$1(JsonTreeReader jsonTreeReader, Continuation continuation) {
        super(3, continuation);
        this.n = jsonTreeReader;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        JsonTreeReader$readDeepRecursive$1 jsonTreeReader$readDeepRecursive$1 = new JsonTreeReader$readDeepRecursive$1(this.n, (Continuation) obj3);
        jsonTreeReader$readDeepRecursive$1.m = (DeepRecursiveScope) obj;
        return jsonTreeReader$readDeepRecursive$1.v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        JsonTreeReader jsonTreeReader = this.n;
        StringJsonLexer stringJsonLexer = jsonTreeReader.a;
        DeepRecursiveScope deepRecursiveScope = this.m;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.l;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            byte l = stringJsonLexer.l();
            if (l == 1) {
                return jsonTreeReader.d(true);
            }
            if (l == 0) {
                return jsonTreeReader.d(false);
            }
            if (l == 6) {
                this.m = null;
                this.l = 1;
                obj = JsonTreeReader.a(jsonTreeReader, deepRecursiveScope, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (l == 8) {
                    return jsonTreeReader.c();
                }
                AbstractJsonLexer.j(stringJsonLexer, "Can't begin reading element, unexpected token", 0, null, 6);
                throw null;
            }
        }
        return (JsonElement) obj;
    }
}
