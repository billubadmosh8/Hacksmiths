# 🎓 Smart Campus Analytics — Hackathon Project Guide
**KPMG Hackathon: Smart Campus Analytics: Predict, Optimize & Improve Student Success**

---

## 📁 Project Structure

```
new website hackhathon/
├── 1_compile_server.bat       ← Compile C server (need GCC)
├── 2_start_server.bat         ← Start C server
├── 2b_start_node_server.bat   ← Start Node.js server (easier!)
├── 3_open_dashboard.bat       ← Open the dashboard
│
├── backend/
│   ├── server.c               ← C HTTP Backend (main backend)
│   └── server_node.js         ← Node.js Backend (alternative)
│
└── frontend/
    ├── index.html             ← Main Dashboard Page
    ├── style.css              ← Premium Dark Theme CSS
    └── app.js                 ← JavaScript Logic + Charts
```

---

## 🚀 HOW TO RUN (Step-by-Step for Beginners)

### ✅ EASIEST METHOD — Node.js Backend (Recommended)

**Step 1: Open your project folder**
- Go to: `Desktop → new website hackhathon`

**Step 2: Double-click `2b_start_node_server.bat`**
- A black window (terminal) will open
- You'll see: `Listening on: http://localhost:8080`
- ⚠️ **Keep this window open! Don't close it!**

**Step 3: Double-click `3_open_dashboard.bat`**
- The dashboard opens in your browser automatically!

**OR** Open `frontend/index.html` directly in Chrome/Edge

---

### 🔧 METHOD 2 — C Language Backend

**Step 1: Install MinGW (C Compiler)**
- Download from: https://winlibs.com/
- Choose: GCC 13+ for Windows x64
- Extract to `C:\mingw64`
- Add `C:\mingw64\bin` to System PATH

**Step 2: Double-click `1_compile_server.bat`**
- Wait for: `[SUCCESS] server.exe compiled!`

**Step 3: Double-click `2_start_server.bat`**
- Server starts on port 8080

**Step 4: Double-click `3_open_dashboard.bat`**
- Dashboard opens in browser!

---

## 📊 Dashboard Features

### 1. Overview Dashboard
- **5 KPI Cards**: Total students, Avg Success Score, CGPA, Attendance, High Risk count
- **Risk Donut Chart**: Visual breakdown of High/Medium/Low risk
- **Score Histogram**: Distribution of student success scores
- **Branch Polar Chart**: Students per department
- **Scatter Plot**: CGPA vs Success Score correlation
- **Radar Chart**: Campus average across 6 dimensions
- **Top Performers**: Top 5 students ranked by score
- **At-Risk List**: Students needing immediate attention

### 2. Students Tab
- Full table of all 25 students
- Filter by branch, risk level, sort options
- Search by name
- Click any student to see full profile

### 3. Risk Monitor Tab
- Red/Amber/Green count cards
- Individual risk cards for every student
- Shows exactly WHY a student is at risk (Low CGPA, Poor Attendance, etc.)

### 4. Analytics Tab
- Attendance vs Success Score trend
- Assignment completion chart
- Placement readiness (Aptitude + Coding)
- **Explainable Score**: Select any student to see breakdown of what drives their score

### 5. Segments Tab
- Students grouped into: All Rounder, Star Academician, On Track, Engaged Underperformer, Needs Attention, Critical Risk

---

## 🧠 Success Score Formula

```
Success Score = 
  Academic (28%)    → CGPA + Internal Marks - Backlog penalty
  Placement (22%)   → Aptitude + Coding + Mock Interviews
  Attendance (15%)  → Overall + Subject-wise
  LMS (10%)         → Login frequency + Assignment completion
  Engagement (10%)  → Events + Clubs + Certifications + Hackathons
  Skills (10%)      → Technical + Soft skills
  Feedback (5%)     → Student satisfaction + Faculty feedback
```

**Risk Classification:**
- `High Risk` (5+ points): CGPA < 5.0, Attendance < 60%, 3+ Backlogs
- `Medium Risk` (2-4 points): Minor issues in multiple areas
- `Low Risk` (0-1 point): Performing well

---

## 🔌 API Endpoints (C / Node.js Backend)

| Endpoint | Description |
|----------|-------------|
| `GET /api/stats` | Summary statistics (totals, averages, risk counts) |
| `GET /api/students` | All 25 students with computed scores |
| `GET /api/student/1` | Single student detail by ID |

---

## 💡 For the Presentation

1. **Start the server** before the demo
2. **Show the Dashboard** — KPIs, charts, risk visualization
3. **Click a High Risk student** — Show their detail modal
4. **Go to Analytics → Explainable Score** — Select a student, show what drives their score
5. **Go to Segments** — Show student grouping for targeted interventions
6. **Explain the formula** using the Success Score breakdown

---

## 🏆 Evaluation Criteria Coverage

| Criterion | Weight | Coverage |
|-----------|--------|----------|
| Data Integration & Analysis | 30% | ✅ 7 data sources: Academic, Attendance, LMS, Engagement, Placement, Skills, Feedback |
| Success Score & Risk ID | 25% | ✅ Weighted formula + 3-tier risk classification |
| Dashboard & Visualization | 25% | ✅ 8 interactive charts + student table + modals |
| Problem Understanding | 10% | ✅ Follows KPMG brief exactly |
| Presentation & Demo | 10% | ✅ Live working prototype |
| **BONUS: Segmentation** | +5pts | ✅ 6 meaningful segments |
| **BONUS: Explainable Score** | +5pts | ✅ Factor-by-factor breakdown with bars |

---

*Built for KPMG Hackathon — Smart Campus Analytics*
