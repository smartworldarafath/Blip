.class public final synthetic Lt6;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/foundation/text/LegacyTextFieldState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lt6;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lt6;->k:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lt6;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lt6;->k:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->q:Landroidx/compose/runtime/MutableState;

    .line 16
    .line 17
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/text/input/ImeAction;

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->r:Landroidx/compose/foundation/text/KeyboardActionRunner;

    .line 26
    .line 27
    iget p1, p1, Landroidx/compose/ui/text/input/ImeAction;->a:I

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/KeyboardActionRunner;->b(I)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/text/input/ImeAction;

    .line 39
    .line 40
    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->r:Landroidx/compose/foundation/text/KeyboardActionRunner;

    .line 41
    .line 42
    iget p1, p1, Landroidx/compose/ui/text/input/ImeAction;->a:I

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/KeyboardActionRunner;->b(I)Z

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :pswitch_2
    iget-object v0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->t:Landroidx/compose/runtime/MutableState;

    .line 49
    .line 50
    check-cast p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 51
    .line 52
    iget-object v2, p1, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 53
    .line 54
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v3, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->j:Landroidx/compose/ui/text/AnnotatedString;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move-object v3, v4

    .line 65
    :goto_0
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    sget-object v2, Landroidx/compose/foundation/text/HandleState;->j:Landroidx/compose/foundation/text/HandleState;

    .line 72
    .line 73
    iget-object v3, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->k:Landroidx/compose/runtime/MutableState;

    .line 74
    .line 75
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 76
    .line 77
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    move-object v2, v0

    .line 81
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 82
    .line 83
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_1

    .line 94
    .line 95
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 96
    .line 97
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->s:Landroidx/compose/runtime/MutableState;

    .line 104
    .line 105
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 106
    .line 107
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_1
    sget-wide v2, Landroidx/compose/ui/text/TextRange;->b:J

    .line 113
    .line 114
    invoke-virtual {p0, v2, v3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->f(J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v2, v3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->e(J)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->u:Lkotlin/jvm/functions/Function1;

    .line 121
    .line 122
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->b:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 126
    .line 127
    iget-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->a:Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 128
    .line 129
    if-eqz p1, :cond_3

    .line 130
    .line 131
    invoke-interface {p1, p0, v4}, Landroidx/compose/runtime/RecomposeScopeOwner;->c(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 132
    .line 133
    .line 134
    :cond_3
    return-object v1

    .line 135
    :pswitch_3
    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    if-eqz p0, :cond_4

    .line 142
    .line 143
    iput-object p1, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->c:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 144
    .line 145
    :cond_4
    return-object v1

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
