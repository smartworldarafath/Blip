.class public final synthetic Lk9;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 13
    iput p1, p0, Lk9;->j:I

    iput-object p3, p0, Lk9;->k:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lk9;->l:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    iput v0, p0, Lk9;->j:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lk9;->l:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    iput-object p2, p0, Lk9;->k:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lk9;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object v3, p0, Lk9;->l:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    iget-object p0, p0, Lk9;->k:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-object v2

    .line 27
    :pswitch_0
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    xor-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v3, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lnet/blip/libblip/event/UpdateUser;

    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v3, 0x5

    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-direct {v1, v4, v0, v3}, Lnet/blip/libblip/event/UpdateUser;-><init>(Ljava/lang/String;Ljava/lang/Boolean;I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-object v2

    .line 61
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-interface {v3, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->n:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 67
    .line 68
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    :pswitch_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-interface {v3, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->m:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 78
    .line 79
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    return-object v2

    .line 83
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-interface {v3, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->l:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 89
    .line 90
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    return-object v2

    .line 94
    :pswitch_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-interface {v3, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->k:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 100
    .line 101
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    return-object v2

    .line 105
    :pswitch_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-interface {v3, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->j:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 111
    .line 112
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    return-object v2

    .line 116
    :pswitch_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-interface {v3, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->o:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 122
    .line 123
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    return-object v2

    .line 127
    :pswitch_7
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 132
    .line 133
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 134
    .line 135
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 136
    .line 137
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    return-object v2

    .line 141
    :pswitch_8
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 146
    .line 147
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 148
    .line 149
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 150
    .line 151
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    return-object v2

    .line 155
    :pswitch_9
    invoke-static {v3, v1}, Lnet/blip/android/ui/home/HomeScreenKt;->b(Landroidx/compose/runtime/MutableState;Z)V

    .line 156
    .line 157
    .line 158
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->m:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 159
    .line 160
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    return-object v2

    .line 164
    :pswitch_a
    invoke-static {v3, v1}, Lnet/blip/android/ui/home/HomeScreenKt;->b(Landroidx/compose/runtime/MutableState;Z)V

    .line 165
    .line 166
    .line 167
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->l:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 168
    .line 169
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    return-object v2

    .line 173
    :pswitch_b
    invoke-static {v3, v1}, Lnet/blip/android/ui/home/HomeScreenKt;->b(Landroidx/compose/runtime/MutableState;Z)V

    .line 174
    .line 175
    .line 176
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->k:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 177
    .line 178
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    return-object v2

    .line 182
    :pswitch_c
    invoke-static {v3, v1}, Lnet/blip/android/ui/home/HomeScreenKt;->b(Landroidx/compose/runtime/MutableState;Z)V

    .line 183
    .line 184
    .line 185
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->j:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 186
    .line 187
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    return-object v2

    .line 191
    :pswitch_d
    invoke-static {v3, v1}, Lnet/blip/android/ui/home/HomeScreenKt;->b(Landroidx/compose/runtime/MutableState;Z)V

    .line 192
    .line 193
    .line 194
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->o:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 195
    .line 196
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    return-object v2

    .line 200
    nop

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
