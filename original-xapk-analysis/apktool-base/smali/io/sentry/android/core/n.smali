.class public final synthetic Lio/sentry/android/core/n;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic j:Lio/sentry/android/core/SentryUserFeedbackForm;

.field public final synthetic k:Landroid/widget/EditText;

.field public final synthetic l:Landroid/widget/EditText;

.field public final synthetic m:Landroid/widget/EditText;

.field public final synthetic n:Lio/sentry/SentryFeedbackOptions;

.field public final synthetic o:Landroid/widget/TextView;

.field public final synthetic p:Landroid/widget/TextView;

.field public final synthetic q:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SentryUserFeedbackForm;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lio/sentry/SentryFeedbackOptions;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/n;->j:Lio/sentry/android/core/SentryUserFeedbackForm;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/android/core/n;->k:Landroid/widget/EditText;

    .line 7
    .line 8
    iput-object p3, p0, Lio/sentry/android/core/n;->l:Landroid/widget/EditText;

    .line 9
    .line 10
    iput-object p4, p0, Lio/sentry/android/core/n;->m:Landroid/widget/EditText;

    .line 11
    .line 12
    iput-object p5, p0, Lio/sentry/android/core/n;->n:Lio/sentry/SentryFeedbackOptions;

    .line 13
    .line 14
    iput-object p6, p0, Lio/sentry/android/core/n;->o:Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object p7, p0, Lio/sentry/android/core/n;->p:Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object p8, p0, Lio/sentry/android/core/n;->q:Landroid/widget/TextView;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    sget p1, Lio/sentry/android/core/SentryUserFeedbackForm;->p:I

    .line 2
    .line 3
    iget-object p1, p0, Lio/sentry/android/core/n;->k:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lio/sentry/android/core/n;->l:Landroid/widget/EditText;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lio/sentry/android/core/n;->m:Landroid/widget/EditText;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    iget-object v6, p0, Lio/sentry/android/core/n;->n:Lio/sentry/SentryFeedbackOptions;

    .line 50
    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    iget-boolean v5, v6, Lio/sentry/SentryFeedbackOptions;->a:Z

    .line 54
    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    iget-object p0, p0, Lio/sentry/android/core/n;->o:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    iget-boolean p1, v6, Lio/sentry/SentryFeedbackOptions;->c:Z

    .line 74
    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    iget-object p0, p0, Lio/sentry/android/core/n;->p:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    iget-object p0, p0, Lio/sentry/android/core/n;->q:Landroid/widget/TextView;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    new-instance p1, Lio/sentry/protocol/Feedback;

    .line 104
    .line 105
    invoke-direct {p1, v4}, Lio/sentry/protocol/Feedback;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p1, Lio/sentry/protocol/Feedback;->l:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v2, p1, Lio/sentry/protocol/Feedback;->k:Ljava/lang/String;

    .line 111
    .line 112
    iget-object p0, p0, Lio/sentry/android/core/n;->j:Lio/sentry/android/core/SentryUserFeedbackForm;

    .line 113
    .line 114
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->k:Lio/sentry/protocol/SentryId;

    .line 115
    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    iput-object v0, p1, Lio/sentry/protocol/Feedback;->n:Lio/sentry/protocol/SentryId;

    .line 119
    .line 120
    :cond_3
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v0}, Lio/sentry/IScopes;->t()Lio/sentry/IFeedbackApi;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0, p1}, Lio/sentry/IFeedbackApi;->a(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_4

    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object v0, v6, Lio/sentry/SentryFeedbackOptions;->r:Ljava/lang/CharSequence;

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 159
    .line 160
    .line 161
    return-void
.end method
