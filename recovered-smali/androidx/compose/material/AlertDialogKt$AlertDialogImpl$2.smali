.class public final Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Lkotlin/jvm/functions/Function2;

.field public final synthetic m:Lkotlin/jvm/functions/Function2;

.field public final synthetic n:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic o:J

.field public final synthetic p:J


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;->j:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;->k:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;->l:Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;->m:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;->n:Landroidx/compose/ui/graphics/Shape;

    .line 13
    .line 14
    iput-wide p6, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;->o:J

    .line 15
    .line 16
    iput-wide p8, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;->p:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    and-int/2addr p2, v2

    .line 19
    move-object v10, p1

    .line 20
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    invoke-virtual {v10, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-wide v8, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;->p:J

    .line 29
    .line 30
    const/4 v11, 0x0

    .line 31
    iget-object v1, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;->j:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;->k:Landroidx/compose/ui/Modifier;

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;->l:Lkotlin/jvm/functions/Function2;

    .line 36
    .line 37
    iget-object v4, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;->m:Lkotlin/jvm/functions/Function2;

    .line 38
    .line 39
    iget-object v5, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;->n:Landroidx/compose/ui/graphics/Shape;

    .line 40
    .line 41
    iget-wide v6, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;->o:J

    .line 42
    .line 43
    invoke-static/range {v1 .. v11}, Landroidx/compose/material/AlertDialogKt;->b(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/Composer;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 48
    .line 49
    .line 50
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method
