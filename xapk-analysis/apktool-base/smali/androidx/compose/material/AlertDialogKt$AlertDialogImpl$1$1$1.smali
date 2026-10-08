.class public final Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$1$1$1;
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
.field public final synthetic j:Lkotlin/jvm/functions/Function2;

.field public final synthetic k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$1$1$1;->j:Lkotlin/jvm/functions/Function2;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$1$1$1;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

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
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    and-int/lit8 v2, p2, 0x3

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    move v2, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v0

    .line 23
    :goto_0
    and-int/2addr p2, v4

    .line 24
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    invoke-virtual {p1, p2, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    iget-object p2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$1$1$1;->j:Lkotlin/jvm/functions/Function2;

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    const p2, 0x2928ac43

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    const v2, -0xf303c82

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, p1, v1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :goto_2
    iget-object p0, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$1$1$1;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 57
    .line 58
    invoke-virtual {p0, p1, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 63
    .line 64
    .line 65
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p0
.end method
