.class public abstract Landroidx/compose/material/ElevationOverlayKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/material/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    sput-object v1, Landroidx/compose/material/ElevationOverlayKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 12
    .line 13
    new-instance v0, Lj6;

    .line 14
    .line 15
    const/16 v1, 0x12

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lj6;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Landroidx/compose/material/ElevationOverlayKt;->b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 26
    .line 27
    return-void
.end method
