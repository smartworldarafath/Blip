.class public final synthetic Landroidx/compose/ui/layout/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

.field public final synthetic k:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/layout/b;->j:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/layout/b;->k:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

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
    if-eqz p2, :cond_6

    .line 27
    .line 28
    iget-object p2, p0, Landroidx/compose/ui/layout/b;->j:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 29
    .line 30
    iget-object p2, p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->g:Landroidx/compose/runtime/MutableState;

    .line 31
    .line 32
    check-cast p2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->Y(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iget-object p0, p0, Landroidx/compose/ui/layout/b;->k:Lkotlin/jvm/functions/Function2;

    .line 58
    .line 59
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    iget p0, p1, Landroidx/compose/runtime/GapComposer;->l:I

    .line 64
    .line 65
    if-nez p0, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const-string p0, "No nodes can be emitted before calling deactivateToEndGroup"

    .line 69
    .line 70
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    iget-boolean p0, p1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 74
    .line 75
    if-nez p0, :cond_4

    .line 76
    .line 77
    if-nez p2, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->P()V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    iget-object p0, p1, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 84
    .line 85
    iget p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 86
    .line 87
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    .line 88
    .line 89
    iget-object v0, p1, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 98
    .line 99
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 100
    .line 101
    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DeactivateCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DeactivateCurrentGroup;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p1, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-static {p2, p0, v0}, Landroidx/compose/runtime/GapComposerKt;->a(IILjava/util/List;)V

    .line 109
    .line 110
    .line 111
    iget-object p0, p1, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->t()V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_2
    iget-boolean p0, p1, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 117
    .line 118
    if-eqz p0, :cond_5

    .line 119
    .line 120
    iget-object p0, p1, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 121
    .line 122
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 123
    .line 124
    iget p2, p1, Landroidx/compose/runtime/GapComposer;->z:I

    .line 125
    .line 126
    if-ne p0, p2, :cond_5

    .line 127
    .line 128
    const/4 p0, -0x1

    .line 129
    iput p0, p1, Landroidx/compose/runtime/GapComposer;->z:I

    .line 130
    .line 131
    iput-boolean v2, p1, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 132
    .line 133
    :cond_5
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 138
    .line 139
    .line 140
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    return-object p0
.end method
