.class public final Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$1;
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
    iput-object p1, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$1;->j:Lkotlin/jvm/functions/Function2;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$1;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

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
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    move v0, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    and-int/2addr p2, v3

    .line 20
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_4

    .line 27
    .line 28
    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 29
    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    .line 32
    invoke-static {p2, v0}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const/high16 v0, 0x41000000    # 8.0f

    .line 37
    .line 38
    const/high16 v1, 0x40000000    # 2.0f

    .line 39
    .line 40
    invoke-static {p2, v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->e(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 45
    .line 46
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 68
    .line 69
    .line 70
    iget-boolean v4, p1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 71
    .line 72
    if-eqz v4, :cond_1

    .line 73
    .line 74
    sget-object v4, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 75
    .line 76
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 81
    .line 82
    .line 83
    :goto_1
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 84
    .line 85
    invoke-static {p1, v0, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 89
    .line 90
    invoke-static {p1, v2, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 91
    .line 92
    .line 93
    iget-boolean v0, p1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 94
    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_3

    .line 110
    .line 111
    :cond_2
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 112
    .line 113
    invoke-static {v1, p1, v1, v0}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 117
    .line 118
    invoke-static {p1, p2, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 119
    .line 120
    .line 121
    new-instance p2, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$1$1$1;

    .line 122
    .line 123
    iget-object v0, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$1;->j:Lkotlin/jvm/functions/Function2;

    .line 124
    .line 125
    iget-object p0, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$1;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 126
    .line 127
    invoke-direct {p2, v0, p0}, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$1$1$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 128
    .line 129
    .line 130
    const p0, -0x75c283aa

    .line 131
    .line 132
    .line 133
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    const/16 p2, 0x1b6

    .line 138
    .line 139
    invoke-static {p0, p1, p2}, Landroidx/compose/material/AlertDialogKt;->c(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 147
    .line 148
    .line 149
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 150
    .line 151
    return-object p0
.end method
