package defpackage;

import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.grid.LazyGridStateKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.material.DrawerKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.input.pointer.HoverIconModifierNode;
import androidx.compose.ui.platform.DisposableSaveableStateRegistry_androidKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.Data;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.internal.StringOpsKt;
import net.blip.libblip.Device;
import net.blip.libblip.User;
import net.blip.shared.StringKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a7 implements Function1 {
    public final /* synthetic */ int j;

    public /* synthetic */ a7(Ref$ObjectRef ref$ObjectRef) {
        this.j = 14;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Object, kotlin.jvm.functions.Function0] */
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = 6;
        boolean z = true;
        switch (this.j) {
            case 0:
                CoroutineContext.Element element = (CoroutineContext.Element) obj;
                if (!(element instanceof CoroutineDispatcher)) {
                    return null;
                }
                return (CoroutineDispatcher) element;
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                Data data = Data.b;
                entry.getClass();
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(" : ");
                if (value instanceof Object[]) {
                    value = Arrays.toString((Object[]) value);
                    value.getClass();
                }
                sb.append(value);
                return sb.toString();
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return EnterExitTransitionKt.c(AnimationSpecKt.c(700, 0, null, 6), 2);
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return EnterExitTransitionKt.d(AnimationSpecKt.c(700, 0, null, 6), 2);
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Device device = (Device) obj;
                device.getClass();
                String lowerCase = device.o.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                return lowerCase;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Device device2 = (Device) obj;
                device2.getClass();
                return device2.m;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                return Boolean.valueOf(DisposableSaveableStateRegistry_androidKt.a(obj));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return Boolean.TRUE;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                TweenSpec tweenSpec = DrawerKt.a;
                return Boolean.TRUE;
            case KeyModifiers.a /* 9 */:
                CoroutineContext.Element element2 = (CoroutineContext.Element) obj;
                if (!(element2 instanceof ExecutorCoroutineDispatcher)) {
                    return null;
                }
                return (ExecutorCoroutineDispatcher) element2;
            case KeyModifiers.b /* 10 */:
                User user = (User) obj;
                if (user == null) {
                    return null;
                }
                return user.m;
            case 11:
                return obj;
            case KeyModifiers.c /* 12 */:
                return Unit.a;
            case 13:
                synchronized (SnapshotKt.c) {
                    List list = SnapshotKt.i;
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((Function1) list.get(i2)).b(obj);
                    }
                }
                return Unit.a;
            case 14:
                ((HoverIconModifierNode) obj).getClass();
                return Boolean.TRUE;
            case 15:
                return Unit.a;
            case 16:
                if (((Character) obj).charValue() != '-') {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 17:
                if (((Character) obj).charValue() != '-') {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 18:
                char charValue = ((Character) obj).charValue();
                if (charValue != 'T' && charValue != 't') {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 19:
                if (((Character) obj).charValue() != ':') {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 20:
                if (((Character) obj).charValue() != ':') {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 21:
                char charValue2 = ((Character) obj).charValue();
                if ('0' > charValue2 || charValue2 >= ':') {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 22:
                String str2 = (String) obj;
                str2.getClass();
                return StringKt.a(str2, "", CollectionsKt.C('\r', '\n'));
            case 23:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                JsonElementSerializer jsonElementSerializer = JsonElementSerializer.a;
                classSerialDescriptorBuilder.getClass();
                final x9 x9Var = new x9(3);
                ClassSerialDescriptorBuilder.a(classSerialDescriptorBuilder, "JsonPrimitive", new SerialDescriptor(x9Var) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
                    public final Lazy a;

                    {
                        this.a = LazyKt.b(x9Var);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String a() {
                        return b().a();
                    }

                    public final SerialDescriptor b() {
                        return (SerialDescriptor) this.a.getValue();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int d(String str3) {
                        str3.getClass();
                        return b().d(str3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialKind e() {
                        return b().e();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int f() {
                        return b().f();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String g(int i3) {
                        return b().g(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List i(int i3) {
                        return b().i(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor j(int i3) {
                        return b().j(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean k(int i3) {
                        return b().k(i3);
                    }
                });
                final x9 x9Var2 = new x9(4);
                ClassSerialDescriptorBuilder.a(classSerialDescriptorBuilder, "JsonNull", new SerialDescriptor(x9Var2) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
                    public final Lazy a;

                    {
                        this.a = LazyKt.b(x9Var2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String a() {
                        return b().a();
                    }

                    public final SerialDescriptor b() {
                        return (SerialDescriptor) this.a.getValue();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int d(String str3) {
                        str3.getClass();
                        return b().d(str3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialKind e() {
                        return b().e();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int f() {
                        return b().f();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String g(int i3) {
                        return b().g(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List i(int i3) {
                        return b().i(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor j(int i3) {
                        return b().j(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean k(int i3) {
                        return b().k(i3);
                    }
                });
                final ?? obj2 = new Object();
                ClassSerialDescriptorBuilder.a(classSerialDescriptorBuilder, "JsonLiteral", new SerialDescriptor(obj2) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
                    public final Lazy a;

                    {
                        this.a = LazyKt.b(obj2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String a() {
                        return b().a();
                    }

                    public final SerialDescriptor b() {
                        return (SerialDescriptor) this.a.getValue();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int d(String str3) {
                        str3.getClass();
                        return b().d(str3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialKind e() {
                        return b().e();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int f() {
                        return b().f();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String g(int i3) {
                        return b().g(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List i(int i3) {
                        return b().i(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor j(int i3) {
                        return b().j(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean k(int i3) {
                        return b().k(i3);
                    }
                });
                final x9 x9Var3 = new x9(5);
                ClassSerialDescriptorBuilder.a(classSerialDescriptorBuilder, "JsonObject", new SerialDescriptor(x9Var3) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
                    public final Lazy a;

                    {
                        this.a = LazyKt.b(x9Var3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String a() {
                        return b().a();
                    }

                    public final SerialDescriptor b() {
                        return (SerialDescriptor) this.a.getValue();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int d(String str3) {
                        str3.getClass();
                        return b().d(str3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialKind e() {
                        return b().e();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int f() {
                        return b().f();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String g(int i3) {
                        return b().g(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List i(int i3) {
                        return b().i(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor j(int i3) {
                        return b().j(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean k(int i3) {
                        return b().k(i3);
                    }
                });
                final x9 x9Var4 = new x9(i);
                ClassSerialDescriptorBuilder.a(classSerialDescriptorBuilder, "JsonArray", new SerialDescriptor(x9Var4) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
                    public final Lazy a;

                    {
                        this.a = LazyKt.b(x9Var4);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String a() {
                        return b().a();
                    }

                    public final SerialDescriptor b() {
                        return (SerialDescriptor) this.a.getValue();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int d(String str3) {
                        str3.getClass();
                        return b().d(str3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialKind e() {
                        return b().e();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int f() {
                        return b().f();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String g(int i3) {
                        return b().g(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List i(int i3) {
                        return b().i(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor j(int i3) {
                        return b().j(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean k(int i3) {
                        return b().k(i3);
                    }
                });
                return Unit.a;
            case 24:
                Map.Entry entry2 = (Map.Entry) obj;
                entry2.getClass();
                String str3 = (String) entry2.getKey();
                JsonElement jsonElement = (JsonElement) entry2.getValue();
                StringBuilder sb2 = new StringBuilder();
                StringOpsKt.a(sb2, str3);
                sb2.append(':');
                sb2.append(jsonElement);
                return sb2.toString();
            case 25:
                List list2 = (List) obj;
                return new LazyGridState(((Number) list2.get(0)).intValue(), ((Number) list2.get(1)).intValue());
            case 26:
                ((Integer) obj).getClass();
                LazyGridMeasureResult lazyGridMeasureResult = LazyGridStateKt.a;
                return EmptyList.j;
            case 27:
                ((Integer) obj).getClass();
                LazyGridMeasureResult lazyGridMeasureResult2 = LazyGridStateKt.a;
                return -1;
            case 28:
                ((Integer) obj).getClass();
                return null;
            default:
                List list3 = (List) obj;
                return new LazyListState(((Number) list3.get(0)).intValue(), ((Number) list3.get(1)).intValue());
        }
    }

    public /* synthetic */ a7(int i) {
        this.j = i;
    }
}
