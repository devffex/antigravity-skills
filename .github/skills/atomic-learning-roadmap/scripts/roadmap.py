#!/usr/bin/env python3
"""
roadmap.py - Generate an atomic learning roadmap for any topic.
Usage: python roadmap.py "Your Topic Here"
"""
import sys
import json

def phase_a_dependencies(topic):
    # Placeholder: In real use, this would be more sophisticated
    return [
        f"Research and list all prerequisite concepts for '{topic}'.",
        f"For each prerequisite, write a 1-2 sentence summary."
    ]

def phase_b_implementation(topic):
    return [
        f"Design a minimum viable project or hands-on exercise for '{topic}'.",
        f"Implement the project, documenting each step."
    ]

def phase_c_spaced_repetition(topic):
    return [
        f"Schedule review sessions for '{topic}' after 1, 3, and 7 days.",
        f"Create 3-5 small exercises to repeat at each interval."
    ]

def phase_d_exam_simulation(topic):
    return [
        f"Create a set of 5-10 exam-style questions for '{topic}'.",
        f"Simulate answering them under timed conditions."
    ]

def generate_roadmap(topic):
    return {
        "topic": topic,
        "phases": [
            {
                "phase": "A: Dependency Mapping",
                "description": "Identify and summarize all prerequisite concepts.",
                "steps": phase_a_dependencies(topic)
            },
            {
                "phase": "B: Implementation",
                "description": "Build a minimum viable project or hands-on exercise.",
                "steps": phase_b_implementation(topic)
            },
            {
                "phase": "C: Spaced Repetition",
                "description": "Plan and execute spaced repetition exercises.",
                "steps": phase_c_spaced_repetition(topic)
            },
            {
                "phase": "D: Exam Simulation",
                "description": "Test your knowledge with exam-style questions.",
                "steps": phase_d_exam_simulation(topic)
            }
        ]
    }

def main():
    if len(sys.argv) < 2:
        print("Usage: python roadmap.py 'Your Topic Here'")
        sys.exit(1)
    topic = sys.argv[1]
    roadmap = generate_roadmap(topic)
    print(json.dumps(roadmap, indent=2))

if __name__ == "__main__":
    main()
