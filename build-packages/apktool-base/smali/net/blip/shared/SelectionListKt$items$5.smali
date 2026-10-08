.class public final Lnet/blip/shared/SelectionListKt$items$5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Lnet/blip/shared/SelectableLazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic k:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/shared/SelectionListKt$items$5;->j:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/shared/SelectionListKt$items$5;->k:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lnet/blip/shared/SelectableLazyItemScope;

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
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    check-cast p4, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    and-int/lit8 v0, p4, 0x6

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    move-object v0, p3

    .line 25
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x2

    .line 36
    :goto_0
    or-int/2addr v0, p4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v0, p4

    .line 39
    :goto_1
    and-int/lit8 p4, p4, 0x30

    .line 40
    .line 41
    if-nez p4, :cond_3

    .line 42
    .line 43
    move-object p4, p3

    .line 44
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 45
    .line 46
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 47
    .line 48
    .line 49
    move-result p4

    .line 50
    if-eqz p4, :cond_2

    .line 51
    .line 52
    const/16 p4, 0x20

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 p4, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v0, p4

    .line 58
    :cond_3
    and-int/lit16 p4, v0, 0x93

    .line 59
    .line 60
    const/16 v1, 0x92

    .line 61
    .line 62
    if-eq p4, v1, :cond_4

    .line 63
    .line 64
    const/4 p4, 0x1

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/4 p4, 0x0

    .line 67
    :goto_3
    and-int/lit8 v1, v0, 0x1

    .line 68
    .line 69
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 70
    .line 71
    invoke-virtual {p3, v1, p4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result p4

    .line 75
    if-eqz p4, :cond_5

    .line 76
    .line 77
    iget-object p4, p0, Lnet/blip/shared/SelectionListKt$items$5;->k:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    and-int/lit8 p4, v0, 0xe

    .line 84
    .line 85
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    iget-object p0, p0, Lnet/blip/shared/SelectionListKt$items$5;->j:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 90
    .line 91
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 96
    .line 97
    .line 98
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 99
    .line 100
    return-object p0
.end method
