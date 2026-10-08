.class public final synthetic Lrb;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/navigation/NavDeepLink;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavDeepLink;I)V
    .locals 0

    .line 1
    iput p2, p0, Lrb;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lrb;->k:Landroidx/navigation/NavDeepLink;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lrb;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lrb;->k:Landroidx/navigation/NavDeepLink;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    return-object v2

    .line 11
    :pswitch_0
    iget-object p0, p0, Landroidx/navigation/NavDeepLink;->j:Lkotlin/Lazy;

    .line 12
    .line 13
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/String;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    new-instance v2, Lkotlin/text/Regex;

    .line 22
    .line 23
    sget-object v0, Lkotlin/text/RegexOption;->j:[Lkotlin/text/RegexOption;

    .line 24
    .line 25
    invoke-direct {v2, p0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-object v2

    .line 29
    :pswitch_1
    sget-object v0, Landroidx/navigation/NavDeepLink;->m:Lkotlin/text/Regex;

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/navigation/NavDeepLink;->h:Lkotlin/Lazy;

    .line 32
    .line 33
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lkotlin/Pair;

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v2, p0

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    return-object v2

    .line 47
    :pswitch_2
    sget-object v0, Landroidx/navigation/NavDeepLink;->m:Lkotlin/text/Regex;

    .line 48
    .line 49
    iget-object p0, p0, Landroidx/navigation/NavDeepLink;->h:Lkotlin/Lazy;

    .line 50
    .line 51
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lkotlin/Pair;

    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    iget-object p0, p0, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Ljava/util/List;

    .line 62
    .line 63
    if-nez p0, :cond_3

    .line 64
    .line 65
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-object p0

    .line 71
    :pswitch_3
    iget-object p0, p0, Landroidx/navigation/NavDeepLink;->a:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz p0, :cond_5

    .line 74
    .line 75
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {p0, v0, v1}, Landroidx/navigation/NavDeepLink;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    new-instance v2, Lkotlin/Pair;

    .line 121
    .line 122
    invoke-direct {v2, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_5
    :goto_0
    return-object v2

    .line 126
    :pswitch_4
    iget-object p0, p0, Landroidx/navigation/NavDeepLink;->a:Ljava/lang/String;

    .line 127
    .line 128
    if-eqz p0, :cond_6

    .line 129
    .line 130
    sget-object v0, Landroidx/navigation/NavDeepLink;->r:Lkotlin/text/Regex;

    .line 131
    .line 132
    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->d(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    if-eqz p0, :cond_6

    .line 137
    .line 138
    const/4 v1, 0x1

    .line 139
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :pswitch_5
    iget-object p0, p0, Landroidx/navigation/NavDeepLink;->c:Ljava/lang/String;

    .line 145
    .line 146
    if-eqz p0, :cond_7

    .line 147
    .line 148
    new-instance v2, Lkotlin/text/Regex;

    .line 149
    .line 150
    sget-object v0, Lkotlin/text/RegexOption;->j:[Lkotlin/text/RegexOption;

    .line 151
    .line 152
    invoke-direct {v2, p0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    :cond_7
    return-object v2

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
