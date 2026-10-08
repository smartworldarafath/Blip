.class public final Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$TrimParentValues;
.super Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrimParentValues"
.end annotation


# static fields
.field public static final c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$TrimParentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$TrimParentValues;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;-><init>(III)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$TrimParentValues;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$TrimParentValues;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->a(I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    iget p1, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->v:I

    .line 7
    .line 8
    iget-object p2, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b:[I

    .line 9
    .line 10
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->r(I)I

    .line 11
    .line 12
    .line 13
    move-result p5

    .line 14
    invoke-virtual {p3, p2, p5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->N([II)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iget-object p5, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b:[I

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->r(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p3, p5, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->g([II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    sub-int p5, p1, p0

    .line 31
    .line 32
    invoke-static {p2, p5}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    :goto_0
    if-ge p2, p1, :cond_2

    .line 37
    .line 38
    iget-object p5, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->c:[Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->h(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    aget-object p5, p5, v0

    .line 45
    .line 46
    instance-of v0, p5, Landroidx/compose/runtime/RememberObserverHolder;

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    check-cast p5, Landroidx/compose/runtime/RememberObserverHolder;

    .line 51
    .line 52
    move-object v0, p4

    .line 53
    check-cast v0, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 54
    .line 55
    invoke-virtual {v0, p5}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->e(Landroidx/compose/runtime/RememberObserverHolder;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    instance-of v0, p5, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    check-cast p5, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 64
    .line 65
    invoke-virtual {p5}, Landroidx/compose/runtime/RecomposeScopeImpl;->d()V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-string p1, "Check failed"

    .line 72
    .line 73
    if-lez p0, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_2
    iget p2, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->v:I

    .line 80
    .line 81
    iget-object p4, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b:[I

    .line 82
    .line 83
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->r(I)I

    .line 84
    .line 85
    .line 86
    move-result p5

    .line 87
    invoke-virtual {p3, p4, p5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->N([II)I

    .line 88
    .line 89
    .line 90
    move-result p4

    .line 91
    iget-object p5, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b:[I

    .line 92
    .line 93
    add-int/lit8 v0, p2, 0x1

    .line 94
    .line 95
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->r(I)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {p3, p5, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->g([II)I

    .line 100
    .line 101
    .line 102
    move-result p5

    .line 103
    sub-int/2addr p5, p0

    .line 104
    if-lt p5, p4, :cond_4

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_3
    invoke-virtual {p3, p5, p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->J(III)V

    .line 111
    .line 112
    .line 113
    iget p1, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->i:I

    .line 114
    .line 115
    if-lt p1, p4, :cond_5

    .line 116
    .line 117
    sub-int/2addr p1, p0

    .line 118
    iput p1, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->i:I

    .line 119
    .line 120
    :cond_5
    return-void
.end method
