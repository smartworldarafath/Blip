package kotlinx.serialization.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.InlineClassDescriptorKt$InlinePrimitiveDescriptor$1;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptorKt;
import kotlinx.serialization.internal.PluginHelperInterfacesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PluginGeneratedSerialDescriptor implements SerialDescriptor, CachedNames {
    public final String a;
    public final GeneratedSerializer b;
    public final int c;
    public final String[] d;
    public final List[] e;
    public final boolean[] f;
    public final Map g;
    public final Lazy h;
    public final Lazy i;
    public final Lazy j;

    public PluginGeneratedSerialDescriptor(String str, InlineClassDescriptorKt$InlinePrimitiveDescriptor$1 inlineClassDescriptorKt$InlinePrimitiveDescriptor$1, int i) {
        Map map;
        this.a = str;
        this.b = inlineClassDescriptorKt$InlinePrimitiveDescriptor$1;
        this.c = i;
        String[] strArr = new String[i];
        final int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            strArr[i3] = "[UNINITIALIZED]";
        }
        this.d = strArr;
        int i4 = this.c;
        this.e = new List[i4];
        this.f = new boolean[i4];
        map = EmptyMap.j;
        this.g = map;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.j;
        this.h = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: ud
            public final /* synthetic */ PluginGeneratedSerialDescriptor k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                ArrayList arrayList;
                int i5 = i2;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = this.k;
                switch (i5) {
                    case 0:
                        GeneratedSerializer generatedSerializer = pluginGeneratedSerialDescriptor.b;
                        if (generatedSerializer != null) {
                            return new KSerializer[]{((InlineClassDescriptorKt$InlinePrimitiveDescriptor$1) generatedSerializer).a};
                        }
                        return PluginHelperInterfacesKt.a;
                    case 1:
                        if (pluginGeneratedSerialDescriptor.b != null) {
                            arrayList = new ArrayList(0);
                        } else {
                            arrayList = null;
                        }
                        return Platform_commonKt.a(arrayList);
                    default:
                        return Integer.valueOf(PluginGeneratedSerialDescriptorKt.a(pluginGeneratedSerialDescriptor, (SerialDescriptor[]) pluginGeneratedSerialDescriptor.i.getValue()));
                }
            }
        });
        final int i5 = 1;
        this.i = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: ud
            public final /* synthetic */ PluginGeneratedSerialDescriptor k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                ArrayList arrayList;
                int i52 = i5;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = this.k;
                switch (i52) {
                    case 0:
                        GeneratedSerializer generatedSerializer = pluginGeneratedSerialDescriptor.b;
                        if (generatedSerializer != null) {
                            return new KSerializer[]{((InlineClassDescriptorKt$InlinePrimitiveDescriptor$1) generatedSerializer).a};
                        }
                        return PluginHelperInterfacesKt.a;
                    case 1:
                        if (pluginGeneratedSerialDescriptor.b != null) {
                            arrayList = new ArrayList(0);
                        } else {
                            arrayList = null;
                        }
                        return Platform_commonKt.a(arrayList);
                    default:
                        return Integer.valueOf(PluginGeneratedSerialDescriptorKt.a(pluginGeneratedSerialDescriptor, (SerialDescriptor[]) pluginGeneratedSerialDescriptor.i.getValue()));
                }
            }
        });
        final int i6 = 2;
        this.j = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: ud
            public final /* synthetic */ PluginGeneratedSerialDescriptor k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                ArrayList arrayList;
                int i52 = i6;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = this.k;
                switch (i52) {
                    case 0:
                        GeneratedSerializer generatedSerializer = pluginGeneratedSerialDescriptor.b;
                        if (generatedSerializer != null) {
                            return new KSerializer[]{((InlineClassDescriptorKt$InlinePrimitiveDescriptor$1) generatedSerializer).a};
                        }
                        return PluginHelperInterfacesKt.a;
                    case 1:
                        if (pluginGeneratedSerialDescriptor.b != null) {
                            arrayList = new ArrayList(0);
                        } else {
                            arrayList = null;
                        }
                        return Platform_commonKt.a(arrayList);
                    default:
                        return Integer.valueOf(PluginGeneratedSerialDescriptorKt.a(pluginGeneratedSerialDescriptor, (SerialDescriptor[]) pluginGeneratedSerialDescriptor.i.getValue()));
                }
            }
        });
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String a() {
        return this.a;
    }

    @Override // kotlinx.serialization.internal.CachedNames
    public final Set b() {
        return this.g.keySet();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int d(String str) {
        str.getClass();
        Integer num = (Integer) this.g.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialKind e() {
        return StructureKind.CLASS.a;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int f() {
        return this.c;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String g(int i) {
        return this.d[i];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List getAnnotations() {
        return EmptyList.j;
    }

    public int hashCode() {
        return ((Number) this.j.getValue()).intValue();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List i(int i) {
        List list = this.e[i];
        if (list == null) {
            return EmptyList.j;
        }
        return list;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialDescriptor j(int i) {
        return ((KSerializer[]) this.h.getValue())[i].c();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean k(int i) {
        return this.f[i];
    }

    public String toString() {
        return PluginGeneratedSerialDescriptorKt.b(this);
    }
}
