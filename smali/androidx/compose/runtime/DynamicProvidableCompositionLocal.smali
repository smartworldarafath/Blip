.class public final Landroidx/compose/runtime/DynamicProvidableCompositionLocal;
.super Landroidx/compose/runtime/ProvidableCompositionLocal;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/ProvidableCompositionLocal<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Landroidx/compose/runtime/SnapshotMutationPolicy;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/CompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Landroidx/compose/runtime/StructuralEqualityPolicy;->a:Landroidx/compose/runtime/StructuralEqualityPolicy;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b:Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/runtime/ProvidedValue;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    :goto_0
    move v3, v1

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :goto_1
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    iget-object v4, p0, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b:Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 13
    .line 14
    move-object v1, p0

    .line 15
    move-object v2, p1

    .line 16
    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/ProvidedValue;-><init>(Landroidx/compose/runtime/ProvidableCompositionLocal;Ljava/lang/Object;ZLandroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function1;Z)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
