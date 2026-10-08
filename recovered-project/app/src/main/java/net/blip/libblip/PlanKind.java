package net.blip.libblip;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Reflection;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlanKind implements WireEnum {
    public static final Companion k;
    public static final PlanKind$Companion$ADAPTER$1 l;
    public static final PlanKind m;
    public static final PlanKind n;
    public static final PlanKind o;
    public static final /* synthetic */ PlanKind[] p;
    public final int j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [net.blip.libblip.PlanKind$Companion, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.squareup.wire.EnumAdapter, net.blip.libblip.PlanKind$Companion$ADAPTER$1] */
    static {
        PlanKind planKind = new PlanKind("Unknown", 0, 0);
        m = planKind;
        PlanKind planKind2 = new PlanKind("Free", 1, 1);
        n = planKind2;
        PlanKind planKind3 = new PlanKind("Paid", 2, 2);
        o = planKind3;
        PlanKind[] planKindArr = {planKind, planKind2, planKind3};
        p = planKindArr;
        EnumEntriesKt.a(planKindArr);
        k = new Object();
        l = new EnumAdapter(Reflection.a(PlanKind.class), Syntax.l, planKind);
    }

    public PlanKind(String str, int i, int i2) {
        this.j = i2;
    }

    public static PlanKind valueOf(String str) {
        return (PlanKind) Enum.valueOf(PlanKind.class, str);
    }

    public static PlanKind[] values() {
        return (PlanKind[]) p.clone();
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.j;
    }
}
