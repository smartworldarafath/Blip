package defpackage;

import androidx.activity.compose.LocalActivityResultRegistryOwner;
import androidx.activity.compose.LocalOnBackPressedDispatcherOwner;
import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.grid.LazyGridStateKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.material.InteractiveComponentSizeKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.retain.ForgetfulRetainedValuesStore;
import androidx.compose.runtime.retain.LocalRetainedValuesStoreKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import bsarchive.AnyItem;
import bsarchive.Metadata$Companion$ADAPTER$1;
import coil3.compose.AsyncImageModelEqualityDelegate;
import coil3.compose.LocalAsyncImageModelEqualityDelegateKt;
import coil3.network.CacheStrategy;
import coil3.network.ConcurrentRequestStrategy;
import coil3.network.okhttp.internal.CallFactoryNetworkClient;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import java.time.Instant;
import java.util.UUID;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.json.JsonArraySerializer;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonNullSerializer;
import kotlinx.serialization.json.JsonObjectSerializer;
import kotlinx.serialization.json.JsonPrimitiveSerializer;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.shared.LightDarkTheme;
import net.blip.shared.LightDarkThemeKt;
import okhttp3.OkHttpClient;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class x9 implements Function0 {
    public final /* synthetic */ int j;

    public /* synthetic */ x9(int i) {
        this.j = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        boolean z = false;
        switch (i) {
            case 0:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = InteractiveComponentSizeKt.a;
                return Boolean.TRUE;
            case 1:
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                JsonElementSerializer jsonElementSerializer = JsonElementSerializer.a;
                return JsonPrimitiveSerializer.b;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                JsonElementSerializer jsonElementSerializer2 = JsonElementSerializer.a;
                return JsonNullSerializer.b;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                JsonElementSerializer jsonElementSerializer3 = JsonElementSerializer.a;
                return JsonObjectSerializer.b;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                JsonElementSerializer jsonElementSerializer4 = JsonElementSerializer.a;
                return JsonArraySerializer.b;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return UUID.randomUUID().toString();
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new LayoutNode(3);
            case KeyModifiers.a /* 9 */:
                LazyGridMeasureResult lazyGridMeasureResult = LazyGridStateKt.a;
                return new LazyGridState(0, 0);
            case KeyModifiers.b /* 10 */:
                LazyListMeasureResult lazyListMeasureResult = LazyListStateKt.a;
                return new LazyListState(0, 0);
            case 11:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = LightDarkThemeKt.a;
                return LightDarkTheme.j;
            case KeyModifiers.c /* 12 */:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = LocalActivityResultRegistryOwner.a;
                return null;
            case 13:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LocalAsyncImageModelEqualityDelegateKt.a;
                return AsyncImageModelEqualityDelegate.a;
            case 14:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = LocalLifecycleOwnerKt.a;
                throw new IllegalStateException("CompositionLocal LocalLifecycleOwner not present");
            case 15:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = LocalOnBackPressedDispatcherOwner.a;
                return null;
            case 16:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = LocalRetainedValuesStoreKt.a;
                return ForgetfulRetainedValuesStore.a;
            case 17:
                ProvidableCompositionLocal providableCompositionLocal = LocalSavedStateRegistryOwnerKt.a;
                throw new IllegalStateException("CompositionLocal LocalSavedStateRegistryOwner not present");
            case 18:
                int i2 = Metadata$Companion$ADAPTER$1.x;
                return ProtoAdapter.Companion.a(ProtoAdapter.p, AnyItem.q);
            case 19:
                int i3 = Metadata$Companion$ADAPTER$1.x;
                ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
                return ProtoAdapter.Companion.a(protoAdapterKt$commonString$1, protoAdapterKt$commonString$1);
            case 20:
                return new SavedStateViewModelFactory();
            case 21:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal4 = NavigationRootKt.a;
                throw new IllegalStateException("No LocalNavController provided");
            case 22:
                ContextScope a = CoroutineScopeKt.a(EmptyCoroutineContext.j);
                CoroutineScopeKt.b(a, null);
                return a;
            case 23:
                return CacheStrategy.a;
            case 24:
                return ConcurrentRequestStrategy.a;
            case 25:
                return SnapshotStateKt.g(Instant.MIN);
            case 26:
                return SnapshotStateKt.g(Boolean.FALSE);
            case 27:
                SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[0];
                if (!StringsKt.t("kotlin.Unit")) {
                    StructureKind.CLASS r0 = StructureKind.CLASS.a;
                    StructureKind.OBJECT object = StructureKind.OBJECT.a;
                    if (object == r0) {
                        z = true;
                    }
                    if (!z) {
                        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder("kotlin.Unit");
                        return new SerialDescriptorImpl("kotlin.Unit", object, classSerialDescriptorBuilder.b.size(), ArraysKt.v(serialDescriptorArr), classSerialDescriptorBuilder);
                    }
                    u2.g("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
                    return null;
                }
                u2.g("Blank serial names are prohibited");
                return null;
            case 28:
                return new CallFactoryNetworkClient(new OkHttpClient());
            default:
                return SnapshotStateKt.g(Boolean.FALSE);
        }
    }

    public /* synthetic */ x9(int i, Object obj) {
        this.j = i;
    }
}
