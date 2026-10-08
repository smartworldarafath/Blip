.class public final Lnet/blip/android/ui/onboarding/OnboardingProfileStep;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lnet/blip/android/ui/onboarding/OnboardingProfileStep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/blip/android/ui/onboarding/OnboardingProfileStep;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/blip/android/ui/onboarding/OnboardingProfileStep;->a:Lnet/blip/android/ui/onboarding/OnboardingProfileStep;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lnet/blip/libblip/User;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v5, p4

    .line 8
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const p4, -0x41961978

    .line 11
    .line 12
    .line 13
    invoke-virtual {v5, p4}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    const/4 v0, 0x2

    .line 21
    if-eqz p4, :cond_0

    .line 22
    .line 23
    const/4 p4, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p4, v0

    .line 26
    :goto_0
    or-int/2addr p4, p5

    .line 27
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr p4, v1

    .line 39
    invoke-virtual {v5, p3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x100

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v1, 0x80

    .line 49
    .line 50
    :goto_2
    or-int/2addr p4, v1

    .line 51
    and-int/lit16 v1, p4, 0x93

    .line 52
    .line 53
    const/16 v2, 0x92

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    if-eq v1, v2, :cond_3

    .line 57
    .line 58
    move v1, v3

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    const/4 v1, 0x0

    .line 61
    :goto_3
    and-int/2addr p4, v3

    .line 62
    invoke-virtual {v5, p4, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    if-eqz p4, :cond_5

    .line 67
    .line 68
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 73
    .line 74
    if-ne p4, v1, :cond_4

    .line 75
    .line 76
    new-instance p4, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 77
    .line 78
    iget-object v1, p1, Lnet/blip/libblip/User;->o:Ljava/lang/String;

    .line 79
    .line 80
    const-wide/16 v6, 0x0

    .line 81
    .line 82
    const/4 v2, 0x6

    .line 83
    invoke-direct {p4, v2, v6, v7, v1}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(IJLjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 87
    .line 88
    .line 89
    move-result-object p4

    .line 90
    invoke-virtual {v5, p4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    check-cast p4, Landroidx/compose/runtime/MutableState;

    .line 94
    .line 95
    invoke-interface {p4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 100
    .line 101
    iget-object v1, v1, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 102
    .line 103
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    xor-int/2addr v1, v3

    .line 110
    new-instance v2, Lu;

    .line 111
    .line 112
    const/16 v4, 0xb

    .line 113
    .line 114
    invoke-direct {v2, p2, p1, p4, v4}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 115
    .line 116
    .line 117
    const v4, 0x3aa86396

    .line 118
    .line 119
    .line 120
    invoke-static {v4, v2, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    new-instance v4, La1;

    .line 125
    .line 126
    invoke-direct {v4, p4, v0}, La1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 127
    .line 128
    .line 129
    const v0, -0x47d39867

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v4, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v4, Lkc;

    .line 137
    .line 138
    invoke-direct {v4, v1, p3, p4, v3}, Lkc;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    .line 139
    .line 140
    .line 141
    const p4, -0x1dfcec66

    .line 142
    .line 143
    .line 144
    invoke-static {p4, v4, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    const/16 v6, 0x6c36

    .line 149
    .line 150
    const/4 v7, 0x4

    .line 151
    sget-object v1, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingProfileStepKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 152
    .line 153
    move-object v3, v0

    .line 154
    move-object v0, v2

    .line 155
    const/4 v2, 0x0

    .line 156
    invoke-static/range {v0 .. v7}, Lnet/blip/android/ui/onboarding/ComposablesKt;->c(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_5
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 161
    .line 162
    .line 163
    :goto_4
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 164
    .line 165
    .line 166
    move-result-object p4

    .line 167
    if-eqz p4, :cond_6

    .line 168
    .line 169
    new-instance v0, Ld4;

    .line 170
    .line 171
    move-object v1, p0

    .line 172
    move-object v2, p1

    .line 173
    move-object v3, p2

    .line 174
    move-object v4, p3

    .line 175
    move v5, p5

    .line 176
    invoke-direct/range {v0 .. v5}, Ld4;-><init>(Lnet/blip/android/ui/onboarding/OnboardingProfileStep;Lnet/blip/libblip/User;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    .line 177
    .line 178
    .line 179
    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 180
    .line 181
    :cond_6
    return-void
.end method
