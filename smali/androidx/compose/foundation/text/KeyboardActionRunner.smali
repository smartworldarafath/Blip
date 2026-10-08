.class public final Landroidx/compose/foundation/text/KeyboardActionRunner;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/text/KeyboardActionScope;


# instance fields
.field public final a:Landroidx/compose/ui/platform/SoftwareKeyboardController;

.field public b:Landroidx/compose/foundation/text/KeyboardActions;

.field public c:Landroidx/compose/ui/focus/FocusManager;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/SoftwareKeyboardController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->a:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/foundation/text/KeyboardActions;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->b:Landroidx/compose/foundation/text/KeyboardActions;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "keyboardActions"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final b(I)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x5

    .line 4
    const/4 v3, 0x6

    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x1

    .line 7
    const/4 v6, 0x7

    .line 8
    if-ne p1, v6, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->a()Landroidx/compose/foundation/text/KeyboardActions;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    iget-object v7, v7, Landroidx/compose/foundation/text/KeyboardActions;->a:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    if-ne p1, v4, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->a()Landroidx/compose/foundation/text/KeyboardActions;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    iget-object v7, v7, Landroidx/compose/foundation/text/KeyboardActions;->b:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    if-ne p1, v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->a()Landroidx/compose/foundation/text/KeyboardActions;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    iget-object v7, v7, Landroidx/compose/foundation/text/KeyboardActions;->c:Lkotlin/jvm/functions/Function1;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    if-ne p1, v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->a()Landroidx/compose/foundation/text/KeyboardActions;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    iget-object v7, v7, Landroidx/compose/foundation/text/KeyboardActions;->d:Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const/4 v7, 0x3

    .line 45
    if-ne p1, v7, :cond_4

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->a()Landroidx/compose/foundation/text/KeyboardActions;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    iget-object v7, v7, Landroidx/compose/foundation/text/KeyboardActions;->e:Lkotlin/jvm/functions/Function1;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    const/4 v7, 0x4

    .line 55
    if-ne p1, v7, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->a()Landroidx/compose/foundation/text/KeyboardActions;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    iget-object v7, v7, Landroidx/compose/foundation/text/KeyboardActions;->f:Lkotlin/jvm/functions/Function1;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_5
    if-ne p1, v5, :cond_6

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_6
    if-nez p1, :cond_d

    .line 68
    .line 69
    :goto_0
    move-object v7, v1

    .line 70
    :goto_1
    if-eqz v7, :cond_7

    .line 71
    .line 72
    invoke-interface {v7, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    return v5

    .line 76
    :cond_7
    const-string v7, "focusManager"

    .line 77
    .line 78
    if-ne p1, v3, :cond_9

    .line 79
    .line 80
    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->c:Landroidx/compose/ui/focus/FocusManager;

    .line 81
    .line 82
    if-eqz p0, :cond_8

    .line 83
    .line 84
    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 85
    .line 86
    invoke-virtual {p0, v5, v5}, Landroidx/compose/ui/focus/FocusOwnerImpl;->h(IZ)Z

    .line 87
    .line 88
    .line 89
    return v5

    .line 90
    :cond_8
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v1

    .line 94
    :cond_9
    if-ne p1, v2, :cond_b

    .line 95
    .line 96
    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->c:Landroidx/compose/ui/focus/FocusManager;

    .line 97
    .line 98
    if-eqz p0, :cond_a

    .line 99
    .line 100
    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 101
    .line 102
    invoke-virtual {p0, v4, v5}, Landroidx/compose/ui/focus/FocusOwnerImpl;->h(IZ)Z

    .line 103
    .line 104
    .line 105
    return v5

    .line 106
    :cond_a
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v1

    .line 110
    :cond_b
    if-ne p1, v6, :cond_c

    .line 111
    .line 112
    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->a:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    .line 113
    .line 114
    if-eqz p0, :cond_c

    .line 115
    .line 116
    check-cast p0, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;->a()V

    .line 119
    .line 120
    .line 121
    return v5

    .line 122
    :cond_c
    return v0

    .line 123
    :cond_d
    const-string p0, "invalid ImeAction"

    .line 124
    .line 125
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return v0
.end method
