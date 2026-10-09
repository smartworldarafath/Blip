.class final Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Landroidx/compose/ui/focus/FocusManager;

.field public final synthetic k:Landroidx/compose/foundation/text/LegacyTextFieldState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/focus/FocusManager;Landroidx/compose/foundation/text/LegacyTextFieldState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1;->j:Landroidx/compose/ui/focus/FocusManager;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1;->k:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/compose/ui/input/key/KeyEvent;->a:Landroid/view/KeyEvent;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    const/16 v2, 0x201

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const v2, 0x2000001

    .line 35
    .line 36
    .line 37
    if-eq v0, v2, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->b(Landroid/view/KeyEvent;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v2, 0x2

    .line 45
    if-ne v0, v2, :cond_9

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/16 v2, 0x101

    .line 52
    .line 53
    if-ne v0, v2, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/16 v0, 0x13

    .line 57
    .line 58
    invoke-static {v0, p1}, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt;->a(ILandroid/view/KeyEvent;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v2, p0, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1;->j:Landroidx/compose/ui/focus/FocusManager;

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    const/4 p0, 0x5

    .line 68
    check-cast v2, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 69
    .line 70
    invoke-virtual {v2, p0, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl;->h(IZ)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/16 v0, 0x14

    .line 76
    .line 77
    invoke-static {v0, p1}, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt;->a(ILandroid/view/KeyEvent;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    const/4 p0, 0x6

    .line 84
    check-cast v2, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 85
    .line 86
    invoke-virtual {v2, p0, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl;->h(IZ)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    const/16 v0, 0x15

    .line 92
    .line 93
    invoke-static {v0, p1}, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt;->a(ILandroid/view/KeyEvent;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    const/4 p0, 0x3

    .line 100
    check-cast v2, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 101
    .line 102
    invoke-virtual {v2, p0, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl;->h(IZ)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    goto :goto_0

    .line 107
    :cond_6
    const/16 v0, 0x16

    .line 108
    .line 109
    invoke-static {v0, p1}, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt;->a(ILandroid/view/KeyEvent;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    const/4 p0, 0x4

    .line 116
    check-cast v2, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 117
    .line 118
    invoke-virtual {v2, p0, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl;->h(IZ)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    goto :goto_0

    .line 123
    :cond_7
    const/16 v0, 0x17

    .line 124
    .line 125
    invoke-static {v0, p1}, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt;->a(ILandroid/view/KeyEvent;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_9

    .line 130
    .line 131
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1;->k:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 132
    .line 133
    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->c:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    .line 134
    .line 135
    if-eqz p0, :cond_8

    .line 136
    .line 137
    check-cast p0, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;->b()V

    .line 140
    .line 141
    .line 142
    :cond_8
    move v1, v3

    .line 143
    :cond_9
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0
.end method
