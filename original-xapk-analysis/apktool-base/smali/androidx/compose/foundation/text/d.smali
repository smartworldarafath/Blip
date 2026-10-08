.class public final synthetic Landroidx/compose/foundation/text/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic k:Z

.field public final synthetic l:Landroidx/compose/ui/platform/WindowInfo;

.field public final synthetic m:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic n:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic o:Landroidx/compose/ui/text/input/OffsetMapping;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;ZLandroidx/compose/ui/platform/WindowInfo;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/d;->j:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/foundation/text/d;->k:Z

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/d;->l:Landroidx/compose/ui/platform/WindowInfo;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/text/d;->m:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/text/d;->n:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/text/d;->o:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/d;->j:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->o:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 6
    .line 7
    iput-object p1, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->h:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iput-object p1, v2, Landroidx/compose/foundation/text/TextLayoutResultProxy;->b:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 16
    .line 17
    :cond_0
    iget-boolean p1, p0, Landroidx/compose/foundation/text/d;->k:Z

    .line 18
    .line 19
    if-eqz p1, :cond_5

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->a()Landroidx/compose/foundation/text/HandleState;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v2, Landroidx/compose/foundation/text/HandleState;->k:Landroidx/compose/foundation/text/HandleState;

    .line 26
    .line 27
    iget-object v3, p0, Landroidx/compose/foundation/text/d;->m:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 28
    .line 29
    iget-object v5, p0, Landroidx/compose/foundation/text/d;->n:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v6, 0x1

    .line 33
    if-ne p1, v2, :cond_2

    .line 34
    .line 35
    iget-object p1, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->l:Landroidx/compose/runtime/MutableState;

    .line 36
    .line 37
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/compose/foundation/text/d;->l:Landroidx/compose/ui/platform/WindowInfo;

    .line 52
    .line 53
    check-cast p1, Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/compose/ui/platform/LazyWindowInfo;->a()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->s()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->p()V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-static {v3, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->a(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iget-object v2, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->m:Landroidx/compose/runtime/MutableState;

    .line 73
    .line 74
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 79
    .line 80
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v3, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->a(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iget-object v2, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->n:Landroidx/compose/runtime/MutableState;

    .line 88
    .line 89
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 94
    .line 95
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-wide v2, v5, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 99
    .line 100
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 109
    .line 110
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->a()Landroidx/compose/foundation/text/HandleState;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    sget-object v2, Landroidx/compose/foundation/text/HandleState;->l:Landroidx/compose/foundation/text/HandleState;

    .line 119
    .line 120
    if-ne p1, v2, :cond_3

    .line 121
    .line 122
    invoke-static {v3, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->a(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 131
    .line 132
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    :goto_1
    iget-object v6, p0, Landroidx/compose/foundation/text/d;->o:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 136
    .line 137
    invoke-static {v0, v5, v6}, Landroidx/compose/foundation/text/CoreTextFieldKt;->f(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    if-eqz p0, :cond_5

    .line 145
    .line 146
    iget-object p1, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;

    .line 147
    .line 148
    if-eqz p1, :cond_5

    .line 149
    .line 150
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_5

    .line 155
    .line 156
    iget-object v0, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->b:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 157
    .line 158
    if-eqz v0, :cond_5

    .line 159
    .line 160
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->o()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_4

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_4
    iget-object v1, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->c:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 168
    .line 169
    if-eqz v1, :cond_5

    .line 170
    .line 171
    iget-object v7, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 172
    .line 173
    new-instance v8, Landroidx/compose/foundation/text/TextFieldDelegate$Companion$updateTextLayoutResult$1$1$1;

    .line 174
    .line 175
    invoke-direct {v8, v0}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion$updateTextLayoutResult$1$1$1;-><init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->a(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-interface {v0, v1, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->l(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    iget-object p0, p1, Landroidx/compose/ui/text/input/TextInputSession;->a:Landroidx/compose/ui/text/input/TextInputService;

    .line 187
    .line 188
    iget-object p0, p0, Landroidx/compose/ui/text/input/TextInputService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 189
    .line 190
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    check-cast p0, Landroidx/compose/ui/text/input/TextInputSession;

    .line 195
    .line 196
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    if-eqz p0, :cond_5

    .line 201
    .line 202
    iget-object v4, p1, Landroidx/compose/ui/text/input/TextInputSession;->b:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 203
    .line 204
    invoke-interface/range {v4 .. v10}, Landroidx/compose/ui/text/input/PlatformTextInputService;->g(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)V

    .line 205
    .line 206
    .line 207
    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 208
    .line 209
    return-object p0
.end method
