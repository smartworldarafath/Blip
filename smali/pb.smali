.class public final synthetic Lpb;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/focus/FocusRequester;ZLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lpb;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lpb;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lpb;->m:Ljava/lang/Object;

    .line 10
    .line 11
    iput-boolean p3, p0, Lpb;->k:Z

    .line 12
    .line 13
    iput-object p4, p0, Lpb;->n:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Lpb;->o:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/internal/NavControllerImpl;ZLkotlin/collections/ArrayDeque;)V
    .locals 1

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lpb;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpb;->l:Ljava/lang/Object;

    iput-object p2, p0, Lpb;->m:Ljava/lang/Object;

    iput-object p3, p0, Lpb;->n:Ljava/lang/Object;

    iput-boolean p4, p0, Lpb;->k:Z

    iput-object p5, p0, Lpb;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lpb;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lpb;->o:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Lpb;->n:Ljava/lang/Object;

    .line 9
    .line 10
    iget-boolean v5, p0, Lpb;->k:Z

    .line 11
    .line 12
    iget-object v6, p0, Lpb;->m:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object p0, p0, Lpb;->l:Ljava/lang/Object;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast p0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 20
    .line 21
    check-cast v6, Landroidx/compose/ui/focus/FocusRequester;

    .line 22
    .line 23
    check-cast v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 24
    .line 25
    check-cast v3, Landroidx/compose/ui/text/input/OffsetMapping;

    .line 26
    .line 27
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-static {v6}, Landroidx/compose/ui/focus/FocusRequester;->a(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->c:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    check-cast v0, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;->b()V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->a()Landroidx/compose/foundation/text/HandleState;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v5, Landroidx/compose/foundation/text/HandleState;->k:Landroidx/compose/foundation/text/HandleState;

    .line 61
    .line 62
    if-eq v0, v5, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-wide v4, p1, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 71
    .line 72
    iget-object p1, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->d:Landroidx/compose/ui/text/input/EditProcessor;

    .line 73
    .line 74
    iget-object v6, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Lt6;

    .line 75
    .line 76
    invoke-virtual {v0, v4, v5, v2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->b(JZ)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-interface {v3, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->a(I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-object p1, p1, Landroidx/compose/ui/text/input/EditProcessor;->a:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 85
    .line 86
    invoke-static {v0, v0}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    const/4 v0, 0x5

    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-static {p1, v4, v2, v3, v0}, Landroidx/compose/ui/text/input/TextFieldValue;->a(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v6, p1}, Lt6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->a:Landroidx/compose/foundation/text/TextDelegate;

    .line 100
    .line 101
    iget-object p1, p1, Landroidx/compose/foundation/text/TextDelegate;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 102
    .line 103
    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-lez p1, :cond_3

    .line 110
    .line 111
    sget-object p1, Landroidx/compose/foundation/text/HandleState;->l:Landroidx/compose/foundation/text/HandleState;

    .line 112
    .line 113
    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->k:Landroidx/compose/runtime/MutableState;

    .line 114
    .line 115
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v4, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->g(Landroidx/compose/ui/geometry/Offset;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_1
    return-object v1

    .line 125
    :pswitch_0
    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 126
    .line 127
    check-cast v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 128
    .line 129
    check-cast v4, Landroidx/navigation/internal/NavControllerImpl;

    .line 130
    .line 131
    check-cast v3, Lkotlin/collections/ArrayDeque;

    .line 132
    .line 133
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iput-boolean v2, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 139
    .line 140
    iput-boolean v2, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 141
    .line 142
    invoke-virtual {v4, p1, v5, v3}, Landroidx/navigation/internal/NavControllerImpl;->m(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V

    .line 143
    .line 144
    .line 145
    return-object v1

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
