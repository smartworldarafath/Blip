package kotlinx.serialization.json.internal;

import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.LinkedHashMap;
import kotlin.DeepRecursiveScope;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.serialization.json.internal.JsonTreeReader", f = "JsonTreeReader.kt", l = {22}, m = "readObject", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class JsonTreeReader$readObject$2 extends ContinuationImpl {
    public DeepRecursiveScope m;
    public JsonTreeReader n;
    public LinkedHashMap o;
    public String p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ JsonTreeReader s;
    public int t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeReader$readObject$2(JsonTreeReader jsonTreeReader, BaseContinuationImpl baseContinuationImpl) {
        super(baseContinuationImpl);
        this.s = jsonTreeReader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.r = obj;
        this.t |= Integer.MIN_VALUE;
        return JsonTreeReader.a(this.s, null, this);
    }
}
